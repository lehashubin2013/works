<?php

namespace App\Http\Controllers\Admin\Users;

use App\Http\Controllers\Admin\BaseController;
use App\Http\Requests\Admin\UpdateRequest;

class Update extends BaseController
{
    public function __invoke(UpdateRequest $request, $id)
    {
        $data = $request->validated();

        $this->service->user->update($data, $id);

        return redirect()->route('admin.users');
    }
}
