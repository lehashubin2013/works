<?php

namespace App\Http\Controllers\Main;

use App\Model\Post;
use App\Model\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Main\BaseController;

class Show extends BaseController
{
    public function __invoke($id)
    {
        // TODO: Implement __invoke() method.

        $posts = Post::select('id', 'image', 'description', 'title', 'category_id', 'color')
            ->where('id', '=', $id)
            ->get();
        $categories = Category::select('id', 'title')->get();
        $slug = $this->getSlug();

        return view('main.single', compact('posts', 'categories', 'slug'));
    }
}
