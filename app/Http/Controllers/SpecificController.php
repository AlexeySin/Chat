<?php

namespace App\Http\Controllers;

use App\Message;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;

class SpecificController extends Controller
{
    public function showSpecificUsers()
    {
        $id = Auth::id();

        $users = User::where('id', '!=', $id)->get();


        $friends_list1 = Message::select('reciver_id')->where('sender_id', $id)->distinct()->get();
        $friends_list2 = Message::select('sender_id')->where('reciver_id', $id)->distinct()->get();


        if ((((empty($friends_list1)) and (empty($friends_list2)))) or ($friends_list1 == $friends_list2)) {
            return view('alert');
        }


        if(!empty($friends_list1)) {
            $friends = [];
            foreach ($friends_list1 as $key) {
                $i = ($key->toArray())["reciver_id"];
                $i1 = User::select('name')->where('id',$i)->get();
                $i2 = $i1[0]->toArray();
                $friends[] = $i2["name"];
            }

        }elseif (!empty($friends_list2)){

            $friends = [];
            foreach ($friends_list2 as $key) {
                $i = ($key->toArray())["reciver_id"];
                $i1 = User::select('name')->where('id',$i)->get();
                $i2 = $i1[0]->toArray();
                $friends[] = $i2["name"];
            }

        }

        $check_type = gettype($friends);
        $string_check = 1;
        return view('start', [
            'id' => $id,
            'friend_array' => $friends,
            'users' => $users,
            'current_user' => null,
            'string_check' => $string_check,
            'check_type' => $check_type
        ]);

    }

}
