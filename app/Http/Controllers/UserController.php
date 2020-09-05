<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Role_user;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = User::all()->where('status', '=', 1);
        return response()->json([
            'data' => $user,
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
            'email' => 'email|required|unique:users',
            'address' => 'required',
            'phone' => 'required|numeric',
            'password' => 'required|confirmed|min:8|max:25'
        ]);
        $validatedData['password'] = bcrypt($request->password);

        $user = User::create($validatedData);
        if($user){
                $role_user = Role_user::create([
                    'user_id' => $user->id,
                    'role_id' => 1
                ]);
        }
        return response([
            'message' => 'Create user successfully!',
            'data_user' => $user,
            'data_role_user' => $role_user
        ], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $user = User::find($id);
        return response()->json([
            'data' => $user
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
        $user = User::find($id);
        $user->name = $request->name;
        $user->email = $request->email;
        $user->address = $request->address;
        $user->phone = $request->phone;
        $user->password = bcrypt($request->password);
        $user->save();

        return response()->json([
            'message' => 'Update user successfully!',
            'data_user' => $user
        ], 201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = User::find($id);
        $user->status = 0;
        $user->save();

        return response()->json([
            'message' => 'Delete user successfully!'
        ], 201);
    }

    // public function checkLogin($request, Closure $next)
    // {
    //     if(Auth::check() && Auth::User()->role=='user'){
    //         return $next($request);
    //     }
    //     return redirect()->route('login')->with('danger',"You don't have an access");
    // }
}
