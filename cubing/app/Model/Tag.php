<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    public $table = 'tags';
    public $guarded = false;

    public function posts(){
        return $this->belongsToMany(Post::class);
    }
}
