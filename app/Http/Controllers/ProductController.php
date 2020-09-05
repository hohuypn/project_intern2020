<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use DB;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $product = Product::all()->where('displayed', '=', 1);
        return response()->json([
            'data' => $product
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
        $product = new Product($request->all());
        $imageFile = $request->file("image");
        $filename  = microtime().'-'.$imageFile->getClientOriginalName();
        $imageFile->move(public_path('image\product'), $filename);
        $product->image = "image\product\\".$filename;
        $product->save();
        return response()->json([
            'message' => 'Create successfully new product',
            'data' => $product
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
        $product = Product::find($id);
        return response()->json([
            'data' => $product
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
        $product = Product::find($id);
        $product->name = $request->name;
        $product->sku = $request->sku;
        $product->price = $request->price;
        $product->instock = $request->instock;
        $product->description = $request->description;
        $product->categories_id = $request->categories_id;
        if ($request->hasFile('image')) {
            $imageFile = $request->file('image');
            $filename  = microtime().'-'.$imageFile->getClientOriginalName();
            $imageFile->move(public_path('image\product'), $filename);
            $product->image = "image\product\\".$filename;
        }
        $product->save();
        return response()->json([
            'message' => 'Create successfully new product',
            'data' => $product
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
        $product = Product::find($id);
        $product->displayed = 0;
        $product->save();
        return response()->json([
            'messages' => 'Delete successfully!'
        ], 200);   

    }

    public function productcate($categories_id){
        $product = DB::table('products')->select('products.name', 'products.sku',
         'products.price', 'products.quantity', 'products.description', 'products.image')
        ->join('categories', 'categories.id', 'products.categories_id')
        ->where('categories.id', $categories_id)
        ->get();
        return response()->json($product);
    }

    public function productRelated($id)
    {
        $product = Product::find($id);
        $product = DB::table('products')->select('products.name', 'products.sku',
        'products.price', 'products.quantity', 'products.description', 'products.image')

        ->get();
    }
}
