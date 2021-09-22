<?php

namespace App\Http\Controllers\Main;

use App\Models\Payment;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use App\Models\Category;

class Categories extends BaseController
{

    public function addCategory(Request $request)
    {
        $data = $this->validator($request->all())->validate();
        if($data){
            $this->createCategory($data);

            return redirect()->route('home');
        }else{
            return back()->withErrors();
        }
    }
    public function addSubCategory(Request $request)
    {
        $data = $this->subValidator($request->all())->validate();
        if($data){
            $this->createSubCategory($data);

            return redirect()->route('home');
        }else{
            return back()->withErrors();
        }
    }

    public function deleteCategory($id)
    {
        Payment::where('category_id', '=', $id)->delete();
        SubCategory::where('category_id', '=', $id)->delete();
        Category::where('id', '=', $id)->delete();

        return redirect()->route('home');
    }
    public function deleteSubCategory($id)
    {
        Payment::where('sub_category_id', '=', $id)->delete();
        SubCategory::where('id', '=', $id)->delete();
        return redirect()->route('home');
    }



    protected function createCategory(array $data)
    {
        return Category::create([
            'title' => $this->customLcfirst($data['title']),
            'user_id' => $data['user_id']
        ]);
    }
    protected function createSubCategory(array $data)
    {
        return SubCategory::create([
            'sub_title' => $this->customLcfirst($data['sub_title']),
            'category_id' => $data['category_id'],
        ]);
    }


    protected function validator(array $data)
    {
        return Validator::make($data, [
            'title' => ['string', 'max:255', 'unique:categories'],
            'user_id' => ['integer', 'max:255'],
        ]);
    }
    protected function subValidator(array $data)
    {
        return Validator::make($data, [
            'sub_title' => ['string', 'max:255', 'unique:sub_categories'],
            'category_id' => ['integer', 'max:255'],
        ]);
    }
}
