<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/',['uses' => 'StartController@show', 'as' => 'show']);



Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('logout', [ 'uses' => 'Auth\AuthController@getLogout', 'as' => 'logout' ]);

Route::get('/all',['uses' => 'UsersController@showAllUsers', 'as' => 'Allusers']);

Route::get('/all_spec',['middleware' => 'Specific', 'uses' => 'SpecificController@showSpecificUsers', 'as' => 'Specific_users']);

Route::get('/curr',['uses' => 'CurrentController@showCurrentUser', 'as' => 'currentuser']);

Route::get('/send_get',['uses' => 'UsersController@sendGet', 'as' => 'send_get']);

Route::post('/send',['uses' => 'MessageController@sendMessage', 'as' => 'send']);

