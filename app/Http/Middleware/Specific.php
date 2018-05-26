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
            $result_check = Message::where('sender_id', $id)->orWhere('reciver_id', $id)->get();

            if (empty($result_check->toArray())) {
                return redirect()->back();
            } else {
                return $next($request);
            }

        }
        return $next($request);
    }
}
