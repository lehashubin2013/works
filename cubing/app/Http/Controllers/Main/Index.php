<?php

namespace App\Http\Controllers\Main;

use App\Http\Controllers\Main\BaseController;
use App\Http\Requests\IndexRequest;
use App\Model\Post;
use App\Model\Category;


class Index extends BaseController
{
    public function __invoke()
    {
        $posts = Post::paginate(9);
        $categories = Category::select('id', 'title')->get();
        $slug = $this->getSlug();

        return view('main.index', compact('posts', 'categories', 'slug'));
    }
}
