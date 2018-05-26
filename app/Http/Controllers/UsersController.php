<?php

namespace App\Http\Controllers;

use App\Message;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;

class UsersController extends Controller
{

    public function showAllUsers()
    {
        $id = Auth::id();
        $users = User::where('id', '!=', $id)->get();

        return view('start', [
            'id' => $id,
            'users' => $users,
            'current_user' => null,
            'string_check' => 0,
            'check_type' => '',
            'senders_name'=>0
        ]);
    }

    public function sendGet()
    {
        return redirect()->back();
    }
}































