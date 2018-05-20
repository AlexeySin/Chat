@extends('start')

@section('content')

    <main role="main">



        <div style="height: 100px;"></div>

        <table>
            <tr>
                <td>
                    <div>
                        <table>
                            <tr>
                                @guest
                                @else
                                    <td>
                                        <a type="button" class="btn btn-primary" href="{{ route('Allusers') }}">Все</a>
                                        <a type="button" class="btn btn-primary" style="color:white;" href="{{ route('Specific_users') }}">Знакомые</a>
                                    </td>
                                @endguest
                            </tr>
                        </table>

                        <form method="GET" action="{{URL::to('/curr')}}">
                            <div class="form-group" style="width: 200px !important;">
                                <select multiple class="form-control" name="selected_user" id="exampleFormControlSelect2" style="height: 400px !important;">
                                    @if(($users != [0]) and ($string_check==0))
                                        @if($check_type == 'array')
                                            @foreach($users as $key)
                                                <option>{{$key}}</option>
                                            @endforeach
                                        @else
                                            @foreach($users as $key)
                                                <option>{{$key->name}}</option>
                                            @endforeach
                                        @endif
                                        @if($string_check==1)
                                            <option>{{$users}}</option>
                                        @else
                                        @endif
                                    @endif
                                </select>
                            </div>
                            <br>
                            <input type="submit"  class="btn btn-success" value="Переписка"></input>
                        </form>
                    </div>

                </td>

                <td>

                    <br>
                    <div style="width:1100px; height: 400px; background-color: rgba(0,0,0,0.1); border-radius:10px;">

                        @if($current_user!=null)
                         <div class="alert alert-success" role="alert" style="z-index: 9999 !important;">
                             Диалог с пользователем: {{$current_user}}
                         </div>
                        @endif
                        <br>
                                <div class="form-group">
                                    <select multiple class="form-control" id="exampleFormControlSelect2" style="width: 1100px !important; height: 300px !important; padding-bottom:200px !important;">
                                        @foreach($last as $key)
                                            <option class="alert alert-light" role="alert">
                                        @if($key["sender_name"]==$check_name)
                                               <option class="alert alert-info" role="alert"> <p>Отправитель - Вы</p></option>
                                            @else
                                                <option class="alert alert-info" role="alert"> <p>Отправитель - {{$key["sender_name"]}}</p></option>
                                            @endif
                                               <option class="alert alert-info" role="alert"> <p>Сообщение - {{$key["message"]}}</p></option>
                                <option class="alert alert-info" role="alert"> <p>Время отправки сообщения - {{$key["time"]}}</p></option>
                                        @endforeach
                                    </select>
                                </div>
                        <br>
                    <!--</div>-->
                    <br>
                    <div>

                        <form method="get" action="{{URL::to('/send')}}">
                            <div class="form-group">
                                <textarea required name="user_message" class="form-control" id="exampleFormControlTextarea1" placeholder="Ваше сообщение..." rows="3" style="background-color: rgba(0,0,0,0.3); border-radius:10px;"></textarea>
                            </div>
                            <input name="senders_id" type="hidden" value="{{$id}}">
                            <input name="senders_name" type="hidden" value="{{$name}}">
                            <input name="time_of_send" type="hidden" value="{{$time}}">
                            <input name="recipient" type="hidden" value="{{$current_user}}">
                            @if($current_user!=null)
                                <button type="submit" class="btn btn-primary">Отправить</button>
                                <button type="reset" class="btn btn-primary">Очистить</button>
                            @else
                                <button type="submit" class="btn btn-primary" disabled>Отправить</button>
                                <button type="reset" class="btn btn-primary">Очистить</button>
                            @endif
                        </form>

                    </div>
                </td>
            </tr>
        </table>


    </main>
    <script src="{{asset('js/button_enable.js')}}"></script>
@endsection
