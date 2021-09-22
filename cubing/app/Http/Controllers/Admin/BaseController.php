<?php

namespace App\Http\Controllers\Admin;

use App\Model\Slug;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Route;
use App\Services\Admin\AdminService;

class BaseController extends Controller
{
    public $service;

    public function __construct(AdminService $service)
    {
        $this->service = $service;
    }
}
