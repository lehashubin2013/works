<?php

namespace App\Http\Controllers\Admin\Posts;

use App\Http\Controllers\Admin\BaseController;
use App\Model\Category;
use App\Model\Post;
use Illuminate\Http\Request;


class Edit extends BaseController
{
    public function __invoke($id)
    {
        // TODO: Implement __invoke() method.

        $posts = Post::where('id', '=' , $id)
            ->get();
        $posts = $posts[0];

        $categories = Category::all();

        return view('admin.posts.edit', compact('posts', 'categories'));
    }
}
