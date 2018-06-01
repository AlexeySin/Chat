<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;


class StartController extends Controller
{

    public function show()
    {
        return view('start', [
            'check_type'   => '',
            'dis_butt'     => 1,
            'string_check' => 0,
            'users'        => [0],
            'new'          => 'newConf'
        ]);
    }
}
