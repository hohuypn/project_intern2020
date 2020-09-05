<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Order_detail;
use App\Order;
use App\Cart_item;

class Order_detailController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($user_id)
    {
        $order_detail = DB::table('order_details')->select('order_details.id as order_detail_id',
         'products.name as product_name', 'products.image', 'products.price as Unit_price'
        , 'order_details.total_quantity', 'products.description', 'categories.name as cate_name',
        'order_details.total_price')
        ->join('products', 'products.id', 'order_details.product_id')
        ->join('categories', 'categories.id', 'products.categories_id')
        ->join('orders', 'orders.id', 'order_details.order_id')
        ->join('users', 'users.id', 'orders.user_id')
        ->where('users.id', $user_id)
        ->get();
        return response()->json([
            'data' => $order_detail
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
        // 
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return Order_detail::find($id);
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
        //
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
