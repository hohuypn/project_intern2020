<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Role_user extends Model
{
    protected $fillable = ['role_id', 'user_id'];

    public $timestamps = false;
}
