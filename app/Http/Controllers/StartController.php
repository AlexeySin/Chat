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
        $id = Auth::id();
        $users = User::where('id','!=',$id)->get();

        date_default_timezone_set('Europe/Kiev');
        $time = Carbon::now();

        return view('start', [
            'users' => $users,
            'string_check' => 0,
            'time' => $time,
            'check_type' => ''
        ]);
    }
}
