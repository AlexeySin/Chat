<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Conversation;
use App\conversation_user;
use Illuminate\Support\Facades\Auth;
use App\User;

class NewConfController extends Controller
{

    public function new(Request $request)
    {
        $selected_user = ($request->toArray())["selected_user"];
        $conv_name     = ($request->toArray())["conv_name"];

        $id                      = Auth::id();
        $conv                    = new Conversation;
        $conv->conversation_name = $conv_name;
        $conv->save();

        $conv_id_var = Conversation::select('id')->where('conversation_name', $conv_name)->get();
        $conv_id     = ($conv_id_var[0]->toArray())['id'];

        $second_id_var = User::select('id')->where('name', $selected_user)->get();
        $second_id     = ($second_id_var[0]->toArray())['id'];

        $conv_user                  = new conversation_user;
        $conv_user->user_id         = $id;
        $conv_user->conversation_id = $conv_id;
        $conv_user->save();
        $conv_user                  = new conversation_user;
        $conv_user->user_id         = $second_id;
        $conv_user->conversation_id = $conv_id;
        $conv_user->save();


        return redirect()->route('Specific_users');
    }
}
