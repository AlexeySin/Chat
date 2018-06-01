<?php

namespace App\Http\Controllers;

use App\Message;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use App\conversation_message;
use App\message_user;

class MessageController extends Controller
{

    /**
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function sendMessage(Request $request)
    {

        $req             = $request->toArray();
        $id              = Auth::id(); #код отправителя
        $sended_message  = $req["user_message"]; #отправленное сообщение
        $conversation_id = $req["cnv"]; #код конфы

#Сначала запишем сообщение
        $message                  = new Message;
        $message->user_id         = $id;
        $message->conversation_id = $conversation_id;
        $message->message         = $sended_message;
        $message->save();

#Потом возбмем id этого сообщения, в этой конфе, этого пользователя
        $message_id_var = Message::select('id')->where([
            ['message', $sended_message],
            ['conversation_id', $conversation_id],
            ['user_id', $id]
        ])->get();
        $message_id     = intval(($message_id_var[0]->toArray())['id']);

#И напоследок, сделаем записи в связные таблицы
        $relation_first                  = new conversation_message;
        $relation_first->message_id      = $message_id;
        $relation_first->conversation_id = $conversation_id;
        $relation_first->save();
        #
        $relation_second             = new message_user;
        $relation_second->user_id    = $id;
        $relation_second->message_id = $message_id;
        $relation_second->save();

        return redirect()->route('send_get');
    }
}
