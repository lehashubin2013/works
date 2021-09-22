<?php

namespace App\Services\Admin\User;

use App\Model\User;

class UserService
{
    public function store($data){
        $data = User::create($data);
    }
    public function destroy($id){
        User::where('id', '=', $id)->delete();
    }
    public function update($data, $id){
        $user = User::where('id', '=', $id);
        $user->update($data);
    }
}
