<?php

namespace App\Http\Controllers\Admin\Posts;

use App\Http\Controllers\Admin\BaseController;
use Illuminate\Http\Request;
use App\Model\Post;
use App\Model\Category;

class Create extends BaseController
{

    public function __invoke()
    {
        $posts         = Post::all();
        $categories    = Category::all();

        return view('admin.posts.create', compact('posts', 'categories'));
    }
}
