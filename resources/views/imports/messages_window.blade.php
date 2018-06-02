<div class="form-group">
    <select multiple class="form-control" id="exampleFormControlSelect2"
            style="width: 1100px !important; height: 300px !important; padding-bottom:200px !important;">
        @foreach ($conv_users as $key)
            @foreach ($messages as $key1)
                @if($key1['user_id']==$key['id'])
                    @if($cur_name == $key['name'])
                        <option class="alert alert-info" role="alert"><p>Отправитель - Вы</p></option>
                    @else
                        <option class="alert alert-info" role="alert"><p>Отправитель - {{$key['name']}}</p></option>
                    @endif
                    <option class="alert alert-info" role="alert"><p>Сообщение - {{$key1['message']}}</p></option>
                    <option class="alert alert-info" role="alert"><p>Время отправки - {{$key1['updated_at']->toFormattedDateString()}}</p>
                    </option>
                @endif
                <option class="alert alert-white" role="alert"></option>
            @endforeach
        @endforeach
    </select>
</div>
