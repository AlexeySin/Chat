<?php

namespace App\Http\Middleware;

use Closure;
use App\User;
use App\Message;
use Illuminate\Support\Facades\Auth;

class Specific
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \Closure $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {

        if (empty($request->toArray())) {

            $id = Auth::id();

            $check = User::select('name')->where('id', $id)->get();
            $Q1 = json_decode($check);
            $variable1 = $Q1[0];
            $E1 = get_object_vars($variable1);
            $check_result = $E1["name"];# Converted name


            $result_check = Message::where('sender_name', $check_result)->orWhere('reciver_name', $check_result)->get();

            if (empty($result_check->toArray())) {
                return redirect()->back();
            } else {
                return $next($request);
            }

        }
        return $next($request);
    }
}
