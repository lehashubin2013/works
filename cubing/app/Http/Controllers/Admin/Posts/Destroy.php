<?php

namespace App\Http\Controllers\Admin\Posts;

use App\Http\Controllers\Admin\BaseController;
use App\Model\Post;
use Illuminate\Http\Request;

class Destroy extends BaseController
{
    public function __invoke($id)
    {
        $this->service->posts->destroy($id);

        return redirect()->route('admin.posts');
    }
}
