<?php

namespace App\Http\Controllers\Admin\Posts;

use App\Http\Controllers\Admin\BaseController;
use App\Http\Requests\UpdateRequest;
use App\Model\Post;
use Illuminate\Http\Request;

class Update extends BaseController
{
    public function __invoke(UpdateRequest $request, $id)
    {
        $data = $request->validated();

        $this->service->posts->update($data, $id);

        return redirect()->route('admin.posts');
    }
}
