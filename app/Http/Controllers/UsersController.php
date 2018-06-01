<?php

namespace App\Http\Controllers;

use App\Message;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use App\Conversation;

class UsersController extends Controller
{

    public function showAllUsers()
    {
        $id    = Auth::id();
        $users = User::where('id', '!=', $id)->get();

        return view('start', [
            'users'        => $users,
            'string_check' => 0,
            'dis_butt'     => 'first',
            'spec_var'     => 1,
            'new'          => 'newConf'
        ]);
    }

    public function sendGet()
    {
        return redirect()->back();
    }
}































