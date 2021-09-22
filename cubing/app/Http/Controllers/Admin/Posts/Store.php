<?php

namespace App\Http\Controllers\Admin\Posts;

use App\Http\Controllers\Admin\BaseController;
use App\Http\Requests\StoreRequest;
use Illuminate\Http\Request;
use App\Model\Post;
use App\Model\Category;

class Store extends BaseController
{
    public function __invoke(StoreRequest $request)
    {
        $data = $request->validated();

        $this->service->posts->store($data);

        return redirect()->route('admin.posts.create');
    }
}
