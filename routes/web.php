<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index');

// ////////////// //
// Consumer route //
// ////////////// //
Route::get('redirect', function () {
    $query = http_build_query([
        'client_id'     => 3,
        'redirect_uri'  => 'http://consumer.dev:8001/callback',
        'response_type' => 'code',
        'scope'         => '*',
    ]);
    return redirect('http://passport.dev:8002/oauth/authorize?' . $query);
});

// ////////////// //
// Consumer route //
// ////////////// //
Route::get('callback', function (Request $request) {
    $http = new GuzzleHttp\Client;
    $response = $http->post('http://passport.dev:8002/oauth/token', [
        'form_params' => [
            'grant_type'    => 'authorization_code',
            'client_id'     => 3,
            'client_secret' => 'JLOiPZHkAI4AdaX0UcXpodL6KjRY10VhiFSOhYXg',
            'redirect_uri'  => 'http://consumer.dev:8001/callback',
            'code'          => $request->code
        ]
    ]);
    // dd( json_decode((string) $response->getBody(), true) );
    return json_decode((string) $response->getBody(), true)['access_token'];
});

// ////////////// //
// Consumer route //
// ////////////// //
Route::get('token', function () {
    $http = new GuzzleHttp\Client;
    $response = $http->post('http://passport.dev:8002/oauth/token', [
        'form_params' => [
            'grant_type'    => 'password',
            'client_id'     => 6,
            'client_secret' => 'kmSLLTcazSOXotgAIIkW3CdHPIASKRoRXmrW44Rt',
            'username'      => 'test@user.com',
            'password'      => 'password',
            'scope'         => '*',
        ],
    ]);
    return json_decode((string) $response->getBody(), true);
});
