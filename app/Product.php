<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = ['name', 'sku', 'price', 'instock', 'description', 'categories_id'
    ];

    public function category(){
        return $this->belongsTo('App\Category','cate_id','id');
    }

    public function order_detail(){
        return $this->hasMany('App\Order_detail', 'id');
    }
}
