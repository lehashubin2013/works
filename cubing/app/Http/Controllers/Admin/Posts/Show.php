<?php

namespace App\Http\Controllers\Admin\Posts;

use App\Http\Controllers\Admin\BaseController;
use App\Model\Category;
use App\Model\Post;
use Illuminate\Http\Request;

class Show extends BaseController
{
    public function __invoke($id)
    {
        // TODO: Implement __invoke() method.


        $posts = Post::select('id', 'image', 'description', 'title', 'category_id', 'color')
            ->where('id', '=', $id)
            ->get();
        $categories = Category::select('id', 'title')->get();

        return view('admin.posts.single', compact('posts', 'categories'));
    }
}
