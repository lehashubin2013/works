<?php

namespace App\Http\Controllers\Main;

use App\Http\Controllers\Controller;
use App\Model\Slug;
use Illuminate\Support\Facades\Route;


class BaseController extends Controller
{
    public function getSlug()
    {
        $slug = Route::current()->getName();

        if($slug === null){
            return 'None';
        }else{
            $slugCyr = Slug::select('id', 'cyr_slug')->where('lat_slug', '=', $slug)->get();
            if(!empty($slugCyr)){
                $slugCyr = $slugCyr[0];

                if(empty( $slugCyr )){
                    return 'None';
                }else {
                    return $slugCyr->cyr_slug;
                }
            }else {
                return 'None';
            }
        }
    }
}
