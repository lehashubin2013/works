<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Payment;

class Category extends Model
{
    public $table = 'categories';
    public $guarded = [];

    public function subCategory()
    {
        return $this->hasMany(SubCategory::class);
    }

}
