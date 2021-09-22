<?php

namespace App\Http\Controllers\Admin\Users;

use App\Http\Controllers\Admin\BaseController;

class Destroy extends BaseController
{
    public function __invoke($id)
    {
        $this->service->user->destroy($id);

        return redirect()->route('admin.users');
    }
}
