<?php

namespace App\Http\Controllers\Main;

use App\Http\Controllers\Main\BaseController;
use App\Model\Post;
use App\Model\Category;
use Illuminate\Http\Request;

class News extends BaseController
{
    public function __invoke()
    {
        // TODO: Implement __invoke() method.

        $posts = Post::paginate('6');
        $categories = Category::select('id', 'title')->get();
        $slug = $this->getSlug();

        return view('main.news', compact('posts', 'categories', 'slug'));
    }
}
