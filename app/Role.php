<?php

namespace App;

use Laratrust\Models\LaratrustRole;

class Role extends LaratrustRole
{
    public $guarded = [];

    public function permission(){
        return $this->belongsToMany('Permission::class');
    }

    public function permission_role(){
        return $this->hasMany('App\Permission_role', 'role_id', 'id');
    }
}
