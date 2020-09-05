<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order_detail extends Model
{
    protected $fillable = ['order_id', 'product_id', 'order_quantity', 'unit_price'];

    public function order(){
        return $this->belongsToMany('App\Order', 'order_id');
    }

    public function product(){
        return $this->belongsToMany('App\Product', 'product_id');
    }
}
