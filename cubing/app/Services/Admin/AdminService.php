<?php

namespace App\Services\Admin;

use App\Services\Admin\Posts\PostsService;
use App\Services\Admin\User\UserService;

class AdminService
{
    public $posts;
    public $user;

    public function __construct(UserService $user, PostsService $posts)
    {
        $this->user       = $user;
        $this->posts      = $posts;
    }
}
