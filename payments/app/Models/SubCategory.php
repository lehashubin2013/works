<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SubCategory extends Model
{
    public $table = 'sub_categories';
    public $guarded = [];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }
}
