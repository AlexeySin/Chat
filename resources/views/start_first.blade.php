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
                                <td>
                                    <a type="button" class="btn btn-primary"
                                       href="{{ route('Allusers') }}">Юзеры</a>
                                    <a type="button" class="btn btn-primary" style="color:white;"
                                       href="{{ route('Specific_users') }}">Переписки</a>
                                </td>
                            </tr>
                        </table>

                        <form method="GET" action="{{URL::to('/conv')}}" onchange="handleSelect()">
                            <div class="form-group" style="width: 200px !important;">
                                <select multiple class="form-control" name="selected_user"
                                        id="exampleFormControlSelect2" style="height: 400px !important;">
                                    @foreach($confs as $key)
                                        <option>
                                            {{$key['conversation_name']}}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                            <br>
                            <button id="checked" type="submit" class="btn btn-success" disabled>Переписка
                            </button>
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
                                    <textarea disabled name="user_message" class="form-control"
                                              id="exampleFormControlTextarea1"
                                              placeholder="Сначала выберите собеседника..." rows="3"
                                              style="background-color: rgba(0,0,0,0.3); border-radius:10px;"></textarea>
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
@endsection

