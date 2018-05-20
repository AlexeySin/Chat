<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Message extends Model
{
    protected $table = 'messages';

    public function createFromFormat($time_param)
    {
        $this->$time = Carbon::createFromFormat('Y-m-d', $time_param);
    }
}
