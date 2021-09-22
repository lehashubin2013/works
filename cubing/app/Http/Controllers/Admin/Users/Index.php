<?php

namespace App\Http\Controllers\Admin\Users;

use App\Http\Controllers\Admin\BaseController;
use App\Model\User;

class Index extends BaseController
{
    public function __invoke()
    {
        $users = User::paginate('9');

        return view('admin.users.index', compact('users'));
    }
}
