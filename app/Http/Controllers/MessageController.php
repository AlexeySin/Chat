<?php

namespace App\Http\Controllers;

use App\Message;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;

class MessageController extends Controller
{
    /**
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function sendMessage(Request $request)
    {

        $id = Auth::id();
        $result_request = $request->toArray();

$token = $result_request["_token"]; #message token
$message = $result_request["user_message"]; #message
$senders_id = intval($result_request["senders_id"]); #id of current user, that send the message
$recipient = $result_request["recipient"]; #name of the receiver
$send_time = Carbon::now(); # Sending date & time

        $senders_name_var1 = User::select('name')->where('id',$senders_id)->get();
        $senders_name_var2 = $senders_name_var1[0]->toArray();
        $senders_name = $senders_name_var2["name"];

        $reciver_id_var1 = User::select('id')->where('name', $recipient)->get(); # Receiver id
        $reciver_id_var2 = $reciver_id_var1[0]->toArray();
        $reciver_id = $reciver_id_var2["id"]; # converted Receiver id


        #Data for the messages window
        $last = Message::where([
            ['reciver_id', $reciver_id],
            ['sender_id', $senders_id]
        ])->orderBy('id', 'asc')->get();


        #Save data to DB
        $mess = new Message;

        $mess->sender_id = $senders_id;
        $mess->reciver_id = $reciver_id;
        $mess->token = $token;
        $mess->message = $message;
        $mess->time = $send_time;

        $mess->save();


        return redirect()->route('send_get');
    }
}
