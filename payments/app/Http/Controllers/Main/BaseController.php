<?php

namespace App\Http\Controllers\Main;

use App\Models\Category;
use App\Models\Payment;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class BaseController extends Controller
{
    protected function customLcfirst($str, $e='utf-8') {
        $fc = mb_strtolower(mb_substr($str, 0, 1, $e), $e);
        return $fc.mb_substr($str, 1, mb_strlen($str, $e), $e);
    }

    protected function getCategories()
    {
        $categories = Category::where('user_id', '=', auth()->user()->id)->orderBy('id')->get();
        return $categories;
    }
    protected function getPayments()
    {
        $payments = Payment::where('payments.user_id', '=', auth()->user()->id)
            ->leftJoin('categories', 'payments.category_id', '=', 'categories.id')
            ->leftJoin('sub_categories', 'payments.sub_category_id', '=', 'sub_categories.id')
            ->select('*', 'payments.id as p_id', 'payments.created_at as created_at_payments', 'payments.updated_at as updated_at_payments')
            ->get();
        return $payments;
    }
    protected function getSubCategories()
    {
        $categories = Category::where('user_id', '=', auth()->user()->id)->get();
        $subCategories = [];
        foreach ($categories as $category){
            foreach ($category->subCategory as $subCategory){
                $subCategories[] = $subCategory;
            }
        }
        return $subCategories;
    }
    protected function getSubCategory($id)
    {
        $subCategory = SubCategory::where('category_id', '=', $id)->get();
        return $subCategory;
    }
}
