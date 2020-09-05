<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Role;
use App\Permission;
use App\Permission_role;
use DB;

class RoleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $role = Role::all()->paginate(15);
        return response()->json([
            'data' => $role,
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
            'permissions' => ''
        ]);
        DB::beginTransaction();
        try {
            $role = DB::table('roles')->insert([
                'name' => $validatedData['name'],
                'display_name' => $validatedData['display_name'],
                'description' => $validatedData['description']
            ]);
            
            $role = DB::table('roles')->where(
                'name', $validatedData['name']
            )->get();
            $permission_return =[];
            if($role[0]){
                foreach ($validatedData['permissions'] as $keyPermission => $permissionId){
                    $permission = DB::table('permissions')->find($permissionId);
                    array_push($permission_return,$permission);
                    if($permission){
                        $permission_role = DB::table('permission_roles')->insert([
                            'permission_id' => $permission->id,
                            'role_id' => $role[0]->id
                        ]);
                    }
                }
            }
            DB::commit();
            return response([
                'message' => 'Create role successfully!',
                'data_roles' => $role,
                'data_permission' => $permission_return
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
        $role = Role::find($id);
        return response()->json([
            'data' => $role,
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
            'permissions' => ''
        ]);
        DB::beginTransaction();
        try {
            $role = DB::table('roles')->where('id', $id)->update([
                'name' => $validatedData['name'],
                'display_name' => $validatedData['display_name'],
                'description' => $validatedData['description']
            ]);
            $role = DB::table('roles')->where(
                'name', $validatedData['name']
            )->get();
            $permission_return =[];
            if($role[0]){
                foreach ($validatedData['permissions'] as $keyPermission => $permissionId){
                    $permission = DB::table('permissions')->find($permissionId);
                    array_push($permission_return,$permission);
                    if($permission){
                        $permission_role = DB::table('permission_roles')->where([
                            'permission_id' => $permissionId,
                            'role_id' => $role[0]->id
                        ])->update([
                            'permission_id' => $permission->id,
                            'role_id' => $role[0]->id
                        ]);
                    }
                }
            }
            DB::commit();
            return response([
                'message' => 'Update role successfully!',
                'data_roles_updated' => $role,
                'data_permission_updated' => $permission_return
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
        return response()->json([
            'message' => 'You can not delete permission!'
        ], 200);
    //    Không xóa roles vì có khóa ngoại bên table permission_role. mà có khóa ngoại thì không nên xóa
    }
    public function rolePermission($role_id)
    {
        $data = DB::table('roles')
        ->innerjoin('permission_roles', 'roles.id', '=',  'permission_roles.role.id')
        ->innerjoin('permissions', 'permissions.id', '=', 'permission_roles.permission_id')
        ->where('roles.id', $role_id)
        ->select('roles.name', 'permissions.name')
        ->get();
        return response()->json($data);
    }
}
