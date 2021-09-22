<?php

namespace App\Http\Controllers\Admin\Users;

use App\Http\Controllers\Admin\BaseController;
use App\Model\User;


class Edit extends BaseController
{
    public function __invoke($id)
    {
        $users = User::where('id', '=' , $id)
            ->get();
        $user = $users[0];

        return view('admin.users.edit', compact('user'));
    }
}
