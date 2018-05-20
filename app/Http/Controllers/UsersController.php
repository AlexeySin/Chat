<?php

namespace App\Http\Controllers;

use App\Message;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;

class UsersController extends Controller
{

    public function showAllUsers()
    {
        $id = Auth::id();
        $users = User::where('id', '!=', $id)->get();

        return view('start', [
            'id' => $id,
            'users' => $users,
            'current_user' => null,
            'string_check' => 0,
            'check_type' => ''
        ]);
    }


    public function sendGet()
    {
        return redirect()->back();
    }


    public function showCurrentUser(Request $request)
    {


        #Taking data from Request
        $current_user = $request->selected_user;
        $reciver_name = $current_user; # Имя получателя


        #Chech-up
        if ($current_user == null) {
            return view('alert');
        }


        #Models data taking
        $id = Auth::id();
        $name = User::select('name')->where('id', $id)->get();
        $users = User::where('id', '!=', $id);


        #Main data conversions
        $n1 = $name[0];
        $n2 = $n1->toArray();
        $sender_name_real = $n2["name"]; # Ready Real Senders Name


        #Data for the messages window
        $last = Message::where([
            ['reciver_name', $reciver_name],
            ['sender_name', $sender_name_real]
        ])->orWhere([
            ['reciver_name', $sender_name_real],/* name to view in hidden field maybe? */
            ['sender_name', $reciver_name]
        ])->orderBy('id', 'asc')->get();


        /*check variable for view
        sender name displaying*/
        $check_name = $sender_name_real;

       #$time = Carbon::now();
        $time = time();


        return view('start_select', [
            'current_user' => $current_user,
            'id' => $id,
            'name' => $name,
            'users' => $users,
            'last' => $last,
            'check_name' => $check_name,
            'string_check' => 0,
            'time' => $time,
            'check_type' => ''
        ]);
    }

    /**
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function sendMessage(Request $request)
    {

        date_default_timezone_set('Europe/Kiev');


        #Getting request data and conversions
        $req = $request;
        $convert_req = get_object_vars($req);
        $result_request = $convert_req["request"];
        #$users = User::where('id', '!=', $id);


        #Request conversion to special array
        $arr = [];
        foreach ($result_request as $key) {
            $arr[] = $key;
        }


        # Convers name
        $Q = json_decode($arr[2]);
        $variable = $Q[0];
        $E = get_object_vars($variable);
        $sender_name = $E["name"]; # Unique name of message Sender


        # Data naming
        $reciver_name = $arr[4]; # Unique name of message Receiver
        $send_time = Carbon::now(); # Sending date & time
        $sender_id = $arr[1]; # Senders id
        $message = $arr[0]; # Sended message
        $sender_id_result = intval($sender_id); # processed sender id


        #Taking model data
        $id = Auth::id();
        $reciver_id = User::select('id')->where('name', $reciver_name)->get(); # Receiver id


        #Getting Receiver id through conversions
        $Q1 = json_decode($reciver_id);
        $variable1 = $Q1[0];
        $E1 = get_object_vars($variable1);
        $reciver_id_result = $E1["id"]; # processed Receiver id


        #Data for the messages window
        $last = Message::where([
            ['reciver_name', $reciver_name],
            ['sender_name', $sender_name]
        ])->orderBy('id', 'asc')->get();


        #Save data to DB
        $mess = new Message;

        $mess->sender_name = $sender_name;
        $mess->reciver_name = $reciver_name;
        $mess->message = $message;
        $mess->time = $send_time;

        $mess->save();


        return redirect()->route('send_get');
    }

    public function showSpecificUsers()
    {
        $id = Auth::id();

        $user_name = User::select('name')->where('id', $id)->get();

        #Taking real name via conversion
        $Q1 = json_decode($user_name);
        $variable1 = $Q1[0];
        $E1 = get_object_vars($variable1);
        $name_result = $E1["name"]; # Converted current user name


        $users = User::where('id', '!=', $id)->get();


        /* Users, with whom current user talked,
         * or who sent a message to current user,
         * name-field in tabel is not necessary.
         */


        $GLOBALS['friends'] = Message::select('reciver_name')->where('sender_name', $name_result)->distinct()->get();
        $GLOBALS['friends_second'] = Message::select('sender_name')->where('reciver_name', $name_result)->distinct()->get();


        #########################
        $d = $GLOBALS;
        $e = $d["friends_second"]->toArray(); # our unique friends names array

$friend_array = [];

        foreach ($e as $key){
            if (array_key_exists('reciver_name', $key)) {
                $friend_names = $key["reciver_name"];    # Array, if more then one friend, hopefully.
                $friend_array[] = $friend_names;
            } elseif (array_key_exists('sender_name', $key)) {
                $friend_names = $key["sender_name"]; # Array, if more then one friend, hopefully.
                $friend_array[] = $friend_names;
            }
        }


##############################

        if ((empty($GLOBALS['friends_second'])) and (empty($GLOBALS['friends']))) {
            return view('alert');
        }


            #Conversion
            $first_variable = $GLOBALS['friends'];
            $Q2 = json_decode($first_variable);
            $variable2 = $Q2[0];
            $E2 = get_object_vars($variable2);

            if (array_key_exists('reciver_name', $E2)) {
                $friend_names = $E2["reciver_name"];    # Array, if more then one friend, hopefully.
            } elseif (array_key_exists('sender_name', $E2)) {
                $friend_names = $E2["sender_name"]; # Array, if more then one friend, hopefully.
            }


            if (gettype(/*$friend_names*/$friend_array) == "string") {
                $string_check = 1;

                $check_type = gettype($friend_array);

                return view('start', [
                    'id' => $id,
                    'users' => $friend_array,
                    'current_user' => null,
                    'string_check' => $string_check,
                    'check_type' => $check_type
                ]);
            } else {

                $check_type = gettype($friend_array);

               /* foreach($friend_array as $key) {
                    dump($key);
                }
                die();
*/
                $string_check = 0;
                return view('start', [
                    'id' => $id,
                    'friend_array' => /*$friend_names*/$friend_array,
                    'users' => $friend_names,
                    'current_user' => null,
                    'string_check' => $string_check,
                    'check_type' => $check_type
                ]);
            }


            #Conversion

            $first_variable = $GLOBALS['friends_second'];
            /*
            $Q2 = json_decode($first_variable);
            $variable2 = $Q2[0];
            $E2 = get_object_vars($variable2);
            $friend_names = $E2["sender_name"];*/

             # Array, if more then one friend.


            if (gettype($friend_array) == "string") {

                $check_type = gettype($friend_array);
                $string_check = 1;
                return view('start', [
                    'id' => $id,
                    'users' => $friend_array,
                    'current_user' => null,
                    'string_check' => $string_check,
                    'check_type' => $check_type
                ]);
            } else {

                $check_type = gettype($friend_array);

                $string_check = 0;
                return view('start', [
                    'id' => $id,
                    'users' => /*$friend_names*/$friend_array,
                    'current_user' => null,
                    'string_check' => $string_check,
                    'check_type' => $check_type
                ]);
            }


    }

    public function TEST()
    {

        date_default_timezone_set('Europe/Kiev');
         return Carbon::now();
    }
}
