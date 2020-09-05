<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Permission_role extends Model
{
    protected $fillable = ['permission_id', 'role_id'];

    public $timestamps = false;

    public function role(){
        return $this->belongsTo('App\Role ', 'role_id', 'id');
    }
}
