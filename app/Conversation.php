<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Message;

class Conversation extends Model
{

    protected $table = 'conversations';

    public function users()
    {
        return $this->belongsToMany('App\User');
    }

    public function messages()
    {
        return $this->belongsToMany('App\Message');
    }

    public static function getConversations($users, $conv_id)
    {
        foreach ($users as $key) {
            if ((is_a($key, 'App\User'))) {

                # Это сообщения из нашей конфы, не конвертированные
                $var = Message::where('conversation_id', $conv_id)->orderBy('updated_at', 'ASC')->get();


                $result_conv     = $var->toArray();
                $users_names_var = [];
                foreach ($result_conv as $key) {
                    $users_names_var[] = $key["user_id"];
                }


                $users_names = []; #Имена юзеров для отображения сообщения
                foreach ($users_names_var as $key) {
                    $users_names_var1 = Message::find($key)->names()->get();
                    $users_names_var2 = $users_names_var1[0]->toArray();
                    $users_names[]    = $users_names_var2["name"];
                }


                return [$result_conv, $users_names];
            } else {
                return redirect()->route('alert');
            }
        }
    }
}
