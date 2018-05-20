
@section('head')
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Чат</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

    <!-- Custom styles for this template -->
    <link href="jumbotron.css" rel="stylesheet">
</head>
@show


@section('nav')
<body>

<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark" style=" z-index:999999 !important;">
    <a class="navbar-brand" href="#">Чат</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarsExampleDefault" style="padding-left: 900px; z-index:999999 !important;">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">


                <!--if (юзер не вошел) -->
                @guest
                <a type="button" class="btn btn-info" href="{{ route('login') }}">Вход</a>
                <a type="button" class="btn btn-primary" href="{{ route('register') }}">Регистрация</a>
                @else
                <!--endif -->


                <!--if (юзер вошел) -->
                    <a class="btn btn-danger" href="{{ route('logout') }}"
                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                        <b><i>Выход</i></b>
                    </a>

                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        @csrf
                    </form>
                    </a>
                <!--endif -->


                @endguest
            </li>
    </div>
</nav>
@show



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

    <form method="GET" action="{{URL::to('/curr')}}"  onchange="handleSelect()">
    <div class="form-group" style="width: 200px !important;">
 <select multiple class="form-control" name="selected_user" id="exampleFormControlSelect2"  style="height: 400px !important;">
            @if(($users != [0]) and ($string_check==0))
                @if($check_type == "array")
                @foreach($friend_array as $key)
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
        @guest
            @else
        <button id="checked" type="submit"  class="btn btn-success" disabled>Переписка</button>
            @endguest
    </form>
</div>

    </td>

        <td>
<br>
            <div style="width:1100px; height: 400px; background-color: rgba(0,0,0,0.1); border-radius:10px;">

                    <p style="padding: 200px; text-align: center;">
                        Тут будут отображаются сообщения, а также имя отправителя и время отправки.
                        <br><br>
                        <b>Выберите собеседника.</b>
                    </p>
            </div>
<br>
    <div>

        <form>
            <div class="form-group">
                <textarea disabled name="user_message" class="form-control" id="exampleFormControlTextarea1" placeholder="Сначала выберите собеседника..." rows="3" style="background-color: rgba(0,0,0,0.3); border-radius:10px;"></textarea>
            </div>
                <button type="submit" class="btn btn-primary" disabled>Отправить</button>
                <button type="reset" class="btn btn-primary" disabled>Очистить</button>
        </form>

    </div>
    </td>
    </tr>
</table>


</main>
<script src="{{asset('js/button_enable.js')}}"></script>
@show


@section('footer')
<br><br><br><br>
<footer class="container"></footer>
</body>
</html>
@show
