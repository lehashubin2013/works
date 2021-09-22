<?php

namespace App\Http\Controllers;

use App\Model\Slug;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Support\Facades\Route;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

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
