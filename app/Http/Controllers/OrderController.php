<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Order_detail;
use App\Order;
use App\CartItem;
use App\Product;
use DB;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $order = Order::all()->where('status', '=', 1);
        return response()->json([
            'data' => $order
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
        DB::beginTransaction();
        try {

            $order = new Order;
            $order->user_id = $request->user_id;
            $order->name = $request->name;
            $order->email = $request->email;
            $order->phone = $request->phone;
            $order->shipment_address = $request->shipment_address;
            $order->notes = $request->notes;
            $order->save();

            foreach($request->order_details as $item)
            {
                $product = DB::table('products')->where('id', $item['product_id'])->first();

                if ($item['order_quantity'] > $product->instock) {
                    return response([
                        'message' => 'Product ' . $item['product_id'] . ' doesn\'t have enough quantity!'
                    ], 400);
                }

                $order_detail = new Order_detail;
                $order_detail->order_id = $order->id;
                $order_detail->product_id = $item['product_id'];
                $order_detail->order_quantity = $item['order_quantity'];
                $order_detail->unit_price = $product->price;
                $order_detail->save();

                DB::table('products')->where('id', $item['product_id'])
                ->update(['instock' => $product->instock - $item['order_quantity']]);
            }
            
            DB::commit();
            return response([
                'message' => 'Create successfully!',
                'order_data' => $order
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
        $order = Order::find($id);
        return response()->json([
            'data' => $order
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
        $order = Order::where('id', $id)->update([
            'product_id' => $request->product_id,
            'quantity' => $request->quantity,
            'amount' => $request->status,
            'store_id' => $request->store_id
        ]);
        return response()->json([
            'message' => 'Create succesfully',
            'data'=> $order
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
        // Administrator can't delete
        $order = Order::find($id);
        $order->status =0;
        $order->save();

        return response()->json([
            'message' => 'Delete order successfully!'
        ], 200);
    }
}
