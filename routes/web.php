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

Route::get('/', function () {
    return view('welcome');
});

/*
 * First Microservice
 * User CRUD Operations
 */
Route::get('crud', 'ApiController@getAllUsers');
Route::get('crud/{id}', 'ApiController@getUser');
Route::post('crud', 'ApiController@createUser');
Route::put('crud/{id}', 'ApiController@updateUser');
Route::delete('crud/{id}','ApiController@deleteUser');

/*
 * User Bank Accounts Operations
 */
Route::post('accounts/add', 'AccountsController@addAccounts');
Route::get('accounts/{user_id}', 'AccountsController@listAccounts');

/*
 * Second Microservice
 * Combines the data for all the users and provides their total balance in a list
 */
Route::get('users', 'AccountsController@listUsers');