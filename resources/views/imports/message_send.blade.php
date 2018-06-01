<div>

    <form method="POST" action="{{URL::to('/send')}}">
        @csrf
        <div class="form-group">
                                    <textarea required name="user_message" class="form-control"
                                              id="exampleFormControlTextarea1" placeholder="Ваше сообщение..." rows="3"
                                              style="background-color: rgba(0,0,0,0.3); border-radius:10px;"></textarea>
        </div>
        <input type="hidden" name="cnv" value="{{$conv_id}}">
        <button type="submit" class="btn btn-primary">Отправить</button>
        <button type="reset" class="btn btn-primary">Очистить</button>
    </form>

</div>