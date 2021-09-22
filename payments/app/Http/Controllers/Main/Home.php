<?php

namespace App\Http\Controllers\Main;

use App\Models\Category;
use App\Models\Payment;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use App\Http\Controllers\Main\BaseController;
use Illuminate\Support\Facades\Auth;

class Home extends BaseController
{
    public function showHomePage()
    {
        if(Auth::check()){
            $categories = $this->getCategories();
            $subCategories = $this->getSubCategories();
            $payments = $this->getPayments();

//            dd($payments);
            return view('index', compact('categories', 'payments', 'subCategories'));
        }else{
            return view('index');
        }
    }
}
