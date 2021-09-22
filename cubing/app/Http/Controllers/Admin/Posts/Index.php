<?php

namespace App\Http\Controllers\Admin\Posts;

use App\Http\Controllers\Admin\BaseController;
use App\Model\Category;
use App\Model\Post;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class Index extends BaseController
{
    public function __invoke()
    {
        // TODO: Implement __invoke() method.
        $posts = Post::paginate('9');
        $categories = Category::all();

        return view('admin.posts.index', compact('posts', 'categories'));
    }
}
