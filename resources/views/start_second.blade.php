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
                                       href="http://chat.loc/all">Назад</a>
                                </td>
                            </tr>
                        </table>

                        <form method="POST" action="{{URL::to('/conv')}}" onchange="handleSelect()">
                            @csrf
                            <div class="form-group" style="width: 200px !important;">
                                <select multiple class="form-control" name="selected_user"
                                        id="exampleFormControlSelect2" style="height: 400px !important;">
                                    <option class="alert alert-info">Члены</option>
                                    @foreach($conv_users as $key)
                                    <option>{{$key["name"]}}</option>
                                        @endforeach
                                </select>
                            </div>
                        </form>
                    </div>

                </td>

                <td>
                    <br>
                    <div style="width:1100px; height: 400px; background-color: rgba(0,0,0,0.1); border-radius:10px;">
                        @include('imports.messages_window')
                    </div>
                    <br>
                   @include('imports.message_send')
                </td>
            </tr>
        </table>
    </main>
    <script src="{{asset('js/button_enable.js')}}"></script>
@endsection
