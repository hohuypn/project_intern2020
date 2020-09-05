<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $fillable = ['user_id', 'name', 'email', 'phone', 'shipment_address', 'notes', 'status'];

    public function user(){
        return $this->hasMany('App\User');
    }

    public function order_detail(){
        return $this->hasMany('App\Order_detail', 'id');
    }
}
