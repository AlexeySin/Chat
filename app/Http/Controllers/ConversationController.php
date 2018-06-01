<?php

namespace App\Http\Controllers;

use Illuminate\Contracts\Support\Responsable;
use Illuminate\Http\Request;
use App\User;
use App\Conversation;
use Illuminate\Support\Facades\Auth;

class ConversationController extends Controller
{

    public function showConversationResult(Request $request)
    {
        $selected_conv_name = (($request->toArray())["selected_user"]);
        $conv_id_var        = Conversation::select('id')->where('conversation_name', $selected_conv_name)->get();
        $conv_id            = intval(($conv_id_var[0]->toArray())['id']); #id выбранной конфы
        $participants       = Conversation::find($conv_id)->users()->get(); #Участники выбранной конфы
        $users              = $participants->toArray();
        $res                = Conversation::getConversations($participants, $conv_id);

        if (gettype($res) != 'array') {
            return $res;
        }

        $id           = Auth::id();
        $cur_name_var = User::select('name')->where('id', $id)->get();
        $cur_name     = ($cur_name_var[0]->toArray())['name']; #Имя пользователя

        $messages = $res[0];
        $names    = $res[1];

        return view('start_second', [
            'conv_users'   => $users,
            'messages'     => $messages,
            'names'        => $names,
            'cur_name'     => $cur_name,
            'conv_id'      => $conv_id,
            'dis_butt'     => null,
            'users'        => [0],
            'string_check' => null,
            'new'          => 'newConf'
        ]);
    }
}
