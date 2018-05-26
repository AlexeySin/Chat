<?php

namespace App\Http\Controllers;

use App\Message;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;

class CurrentController extends Controller
{
    public function showCurrentUser(Request $request)
    {

        #Taking data from Request
        $current_user = $request->selected_user; # Chosen user name


        #Chech-up
        if ($current_user == null) {
            return view('alert');
        }


        #Models data taking
        $id = Auth::id();

        $current_id = User::select('id')->where('id', $id)->get(); # id of current user (not converted)

        $users = User::where('id', '!=', $id); # For left panel displaying (users list)


        #Main data conversions
        $n1 = $current_id[0]->toArray();
        $sender_id_real = $n1["id"]; # Converted senders name (current user)



       $chosen_var1 = User::select('id')->where('name',$current_user)->get();
        $chosen_var2 = $chosen_var1[0]->toArray();
        $chosen_id = $chosen_var2['id'];


        #Data for the messages window
        $last = Message::where([
            ['reciver_id', $chosen_id],
            ['sender_id', $sender_id_real]
        ])->orWhere([
            ['reciver_id', $sender_id_real],
            ['sender_id', $chosen_id]
        ])->orderBy('id', 'asc')->get();

        $time = time();

        return view('start_select', [
            'current_user' => $current_user,
            'id' => $id,
            'users' => $users,
            'last' => $last,
            'check_id' => $sender_id_real,
            'string_check' => 0,
            'time' => $time,
            'check_type' => ''
        ]);
    }
}
