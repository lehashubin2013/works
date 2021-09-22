<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    public $table = 'categories';
    public $guarded = false;

    public function posts(){
        return $this->hasMany(Post::class);
    }
}
