<?php

namespace App\Http\Controllers\Admin\Users;

use App\Http\Controllers\Admin\BaseController;
use App\Model\User;


class Show extends BaseController
{
    public function __invoke($id)
    {
        $users = User::where('id', '=', $id)
            ->get();

        return view('admin.users.single', compact('users'));
    }
}
