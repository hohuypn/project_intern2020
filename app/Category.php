<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = ['name', 'image'];

    public function product(){
        return $this->hasMany('App\Product','cate_id','id');
    }
}
