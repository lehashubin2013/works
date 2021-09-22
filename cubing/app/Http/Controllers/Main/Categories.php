<?php

namespace App\Http\Controllers\Main;

use App\Http\Controllers\Main\BaseController;
use App\Model\Post;
use App\Model\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class Categories extends BaseController
{
    public function __invoke($id)
    {
        // TODO: Implement __invoke() method.

        $posts = Post::where('category_id', '=', $id)
            ->paginate('9');
        $categories = Category::select('id', 'title')
            ->where('id', '=', $id)
            ->get();
        $slug = $this->getSlug();

        return view('main.category', compact('posts', 'categories', 'slug'));
    }
}
