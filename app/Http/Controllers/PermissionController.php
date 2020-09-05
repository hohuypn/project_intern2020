<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Role;
use App\Permission;
use App\Permission_role;
use DB;

class PermissionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $permission = Permission::all()->panigate(15);
        return response()->json([
            'data' => $permission,
            'status' => 200
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|max:55',
            'display_name' => 'required',
            'description' => 'required',
            'roles' => ''
        ]);
        DB::beginTransaction();
        try {
            $permission = DB::table('permissions')->insert([
                'name' => $validatedData['name'],
                'display_name' => $validatedData['display_name'],
                'description' => $validatedData['description']
            ]);
            $permission = DB::table('permissions')->where(
                'name', $validatedData['name']
            )->get();
            $role_return =[];
            if($permission[0]){
                foreach ($validatedData['roles'] as $keyRole => $roleId){
                    $role = DB::table('roles')->find($roleId);
                    array_push($role_return,$role);
                    if($role){
                        $permission_role = DB::table('permission_roles')->insert([
                            'role_id' => $role->id,
                            'permission_id' => $permission[0]->id
                        ]);
                    }
                }
            }
            DB::commit();
            return response([
                'message' => 'Create permission successfully!',
                'data_permissions' => $permission,
                'data_role' => $role_return
            ], 201);
        } catch (Exception $e) {
            DB::rollBack();
            return response()->json([
                'message' => $e->getMessage()
            ], 500);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $permission = Permission::find($id);
        return response()->json([
            'data' => $permission,
            'status' => 200
        ], 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'name' => 'required|max:55',
            'display_name' => 'required',
            'description' => 'required',
            'roles' => ''
        ]);
        DB::beginTransaction();
        try {
            $permission = DB::table('permissions')->where('id', $id)->update([
                'name' => $validatedData['name'],
                'display_name' => $validatedData['display_name'],
                'description' => $validatedData['description']
            ]);
            $permission = DB::table('permissions')->where(
                'name', $validatedData['name']
            )->get();
            $role_return =[];
            if($permission[0]){
                foreach ($validatedData['roles'] as $keyRole => $roleId){
                    $role = DB::table('roles')->find($roleId);
                    array_push($role_return,$role);
                    if($role){
                        $permission_role = DB::table('permission_roles')->where([
                            'role_id' => $role->id,
                            'permission_id' => $permission[0]->id
                        ])->update([
                            'role_id' => $role->id,
                            'permission_id' => $permission[0]->id
                        ]);
                    }
                }
            }
            DB::commit();
            return response([
                'message' => 'Update permission successfully!',
                'data_permissions_updated' => $permission,
                'data_role_updated' => $role_return
            ], 201);
        } catch (Exception $e) {
            DB::rollBack();
            return response()->json([
                'message' => $e->getMessage()
            ], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // $permission  = Permission::find($id);
        // $permission->delete();
        return response()->json([
            'message' => 'You can not delete permission!'
        ], 200);
    }
}
