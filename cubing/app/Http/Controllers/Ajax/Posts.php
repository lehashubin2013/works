<?php

namespace App\Http\Controllers\Ajax;

use App\Http\Controllers\Controller;
use App\Model\Category;
use App\Model\Post;
use Illuminate\Http\Request;

class Posts extends Controller
{
    public function __invoke(Request $request)
    {
        $page       = $request->input('page') ? $request->input('page') : 2;
        $countPosts = $request->input('countPosts') ? $request->input('countPosts') : 9;

        $categories = Category::all();
        $posts = Post::paginate($countPosts, ['*'], 'page', $page);

        if($posts){
            return ['posts' => $posts, 'categories' => $categories];
        }else{
            return false;
        }
    }
}
