<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\CartItem;
use App\Product;
use DB;
class CartItemController extends Controller
{
    public function index($user_id)
    {
        $cart_item = DB::table('cart_items')->select('products.name', 'products.image',
         'products.price', 'cart_items.quantity', 'products.description', 'products.sku', 'categories.name as cate_name')
        ->join('products', 'products.id', 'cart_items.product_id')
        ->join('categories', 'categories.id', 'products.categories_id')
        ->join('users', 'users.id', 'cart_items.user_id')
        ->where('users.id', $user_id)
        ->get();
        // $cart_item = CartItem::all();
        return response()->json($cart_item);
    }

    public function store(Request $request)
    {
        $validateData = $request->validate([
            'user_id' => 'required',
            'product_id' => 'required',
            'quantity' => 'required'
        ]);

        $cart_item = CartItem::create($validateData);
        
        return response()->json([
            'message'=> 'Create successfully!',
            'data' => $cart_item
        ], 201);
    }
    public function plus(Request $request, $id)
    {
        $cart_item = CartItem::find($id);
        
        if(empty($cart_item)){
            $cart_item = new CartItem;
            $cart_item->user_id = $request->user_id;
            $cart_item->product_id = $request->product_id;
            $cart_item->quantity = 1;
            $cart_item->save();
        }
        else{
            $product_item = $cart_item->product_id;

            $product = Product::find($product_item);
            if($product->quantity > $cart_item->quantity){
                $cart_item->quantity += 1;
                $cart_item->save();
            }
            else {
                return 'Số lượng không thể lớn hơn số lượng trong kho!';
            }
        }
        return response()->json($cart_item);

    }

    public function minus( Request $request, $id)
    {
        $cart_item = CartItem::find($id);
        
        if($cart_item->quantity>1){
            $cart_item->quantity -= 1;
            $cart_item->save();
        }
        
        return response()->json($cart_item);
    }

    public function delete($id)
    {
        $cart_item = CartItem::where('id', $id)->delete();
        return response()->json(['message' => 'Detele cart successfully!']);
    }
}
