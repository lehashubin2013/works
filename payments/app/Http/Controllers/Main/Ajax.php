<?php

namespace App\Http\Controllers\Main;

use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class Ajax extends BaseController
{
    public function ajaxSubCategories(Request $request)
    {
        $data = $this->validator($request->all())->validate();
        $subCategory = $this->getSubCategory($data['category_id']);

        return $subCategory;
    }
    public function ajaxCategories()
    {
        $categories = $this->getCategories();

        return $categories;
    }
    public function ajaxPayments(Request $request)
    {
        $payments = $this->getPayments();
        $categories = $this->getCategories();
        $sortPayments = $this->sortPaymentsByTitle($categories, $payments);
        $sum = $this->sumPayments($payments);
        return [
            'payments' => $sortPayments,
            'sumPayments' => $sum,
        ];
    }


    protected function sumPayments($payments)
    {
        $sum = 0;
        foreach ($payments as $payment){
            $sum += $payment->paid;
        }
        return $sum;
    }
    protected function sortPaymentsByTitle($categories, $payments)
    {
        $sortPayments = [];
        $sumPayments = [];
        foreach ($categories as $category){
            foreach($payments as $payment){
                if($category->title == $payment->title){
                    $sortPayments[$category->title][] = $payment->paid;
                }
            }
        }
        foreach ($categories as $category){
            foreach ($sortPayments as $key => $value){

                if($category->title == $key){
                    $sumPayments[$category->title] = array_sum($value);
                }
            }
        }
        return $sumPayments;
    }
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'category_id' => ['integer', 'max:255'],
        ]);
    }
}
