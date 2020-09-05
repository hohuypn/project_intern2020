<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Store;
use App\Product;

class StoreController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Store::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $store = new Store($request->all());
        if($request->hasFile('image')){
            $imageFile = $request->file('image');
            $filename  = microtime().'-'.$imageFile->getClientOriginalName();
            $imageFile->move(public_path('image\store'), $filename);
            $store->image = "image\store\\".$filename;
        }
        $store->save();

        return response()->json([
            'message' => "Create successfully new store",
            'data' => $store
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
        return Store::find($id);
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
        $store = Store::find($id);
        $store->name = $request->name;
        $store->phone = $request->phone;
        $store->email = $request->email;
        $store->address = $request->address;
        $store->description = $request->description;
        $store->product_id = $request->product_id;
        if($request->hasFile('image')){
            $imageFile = $request->file('image');
            $filename  = microtime().'-'.$imageFile->getClientOriginalName();
            $imageFile->move(public_path('image\store'), $filename);
            $store->image = "image\store\\".$filename;
        }
        $store->save();

        return response()->json([
            'message' => "Update successfully store",
            'data' => $store
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
        //
    }
}
