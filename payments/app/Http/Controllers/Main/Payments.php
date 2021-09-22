<?php

namespace App\Http\Controllers\Main;

use App\Models\Category;
use App\Models\Payment;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class Payments extends BaseController
{
    public function addPayment(Request $request)
    {
        $data = $this->validator($request->all())->validate();

        if($data){
            $this->create($data);
            return redirect()->route('home');
        }else{
            return back()->withErrors();
        }
    }
    public function deletePayment($id)
    {
        Payment::where('id', '=', $id)->delete();
        return redirect()->route('home');
    }


    protected function create(array $data)
    {
        return Payment::create([
            'paid' => $data['paid'],
            'category_id' => $data['category_id'],
            'sub_category_id' => $data['sub_category_id'],
            'user_id' => $data['user_id']
        ]);
    }
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'paid' => ['integer'],
            'category_id' => ['integer', 'max:255'],
            'sub_category_id' => ['nullable'],
            'user_id' => ['integer', 'max:255'],
        ]);
    }
}
