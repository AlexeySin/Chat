<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Message extends Model
{

    protected $table = 'messages';

    public function conversations()
    {
        return $this->belongsToMany('App\Conversation');
    }

    public function messages()
    {
        return $this->belongsToMany('App\User');
    }

    public function names()
    {
        return $this->belongsToMany('App\User');
    }
}
