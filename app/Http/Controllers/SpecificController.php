<?php

namespace App\Http\Controllers;

use App\Conversation;
use App\Message;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;

class SpecificController extends Controller
{

    public function showSpecificUsers()
    {
        $id        = Auth::id();
        $users     = Conversation::find($id)->users()->get(); #Юзеры конфы
        $confs_var = User::find($id)->conversations()->get();

        foreach ($confs_var as $key) {
            $confs[] = $key->toArray();
        }

        return view('start_first', [
            'confs'        => $confs,
            'dis_butt'     => null,
            'users'        => [0],
            'string_check' => null,
            'new'          => 'newConf'
        ]);
    }
}
