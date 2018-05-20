<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use App\User;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Auth;
use  Carbon\Carbon;
use DB;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);


        #date_default_timezone_set('Europe/Kiev');
        #$time = Carbon::now();


       # DB::listen(function ($query) {
          #  echo"<br><br><br>";
          #  var_dump([
              #  $query->sql,
              #  $query->bindings,
              #  $query->time
          #  ]);
       # });

    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
