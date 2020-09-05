<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cate = Category::all();
        return response()->json([
            'data' => $cate
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $category = new Category($request->all());
        $imageFile = $request->file("image");
        $filename  = microtime().'-'.$imageFile->getClientOriginalName();
        $imageFile->move(public_path('image\category'), $filename);
        $category->image = "image\category\\".$filename;
        $category->save();
        return response()->json([
            'message' => 'Create successfully new category',
            'data' => $category
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
        return Category::find($id);
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
        $category = Category::find($id);
        $category->name = $request->name;

        if ($request->hasFile('image')) {
            $imageFile = $request->file('image');
            $filename  = microtime().'-'.$imageFile->getClientOriginalName();
            $imageFile->move(public_path('image\category'), $filename);
            $category->image = "image\category\\".$filename;
        }
        $category->save();
        
        return response()->json([
            'message' => 'Update successfully category',
            'data' => $category
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
        $category = Category::find($id);
        $category->delete();
        
        return response()->json(['message' => 'Delete category sussessfully!']);
    }
}
