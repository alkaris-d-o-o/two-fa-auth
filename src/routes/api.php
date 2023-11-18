<?php

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Routes for mobile APPS
|
*/

Route::prefix('group')->group(['namespace' => 'Alkaris\TwoFAAuth\Http\Controllers', 'prefix' => '/auth'], function(){
    Route::post('/',                                 'AuthController@auth')->name('api.auth.register');

    // ** Register new user ** //
    /* Check if email has been used */
    Route::post('/check-for-an-email',               'AuthController@checkForAnEmail')->name('api.auth.register.check-for-an-email');
    Route::post('/check-email-password',             'AuthController@checkEmailPassword')->name('api.auth.register.check-email-password');

    /* Register new user */
    Route::post('/register',                         'AuthController@register')->name('api.auth.register.post');

    /* Restart password */
    Route::group(['prefix' => '/restart-password'], function(){
        Route::post('/generate-pin',                 'AuthController@generatePIN')->name('api.auth.restart-password.generate-pin');
        Route::post('/verify-pin',                   'AuthController@verifyPIN')->name('api.auth.restart-password.verify-pin');
        Route::post('/new-password',                 'AuthController@newPassword')->name('api.auth.restart-password.new-password');
    });
});
