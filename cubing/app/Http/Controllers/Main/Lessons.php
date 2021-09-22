<?php

namespace App\Http\Controllers\Main;

class Lessons extends BaseController
{
    public function __invoke()
    {
        $slug = $this->getSlug();
        return view('main.lessons', compact('slug'));
    }
}
