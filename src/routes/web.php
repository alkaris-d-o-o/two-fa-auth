<?php

Route::group(['namespace' => 'Alkaris\TwoFAAuth\Http\Controllers', 'prefix' => '/auth', 'middleware' => 'web'], function(){
    Route::get ('/',                              'AuthController@auth')->name('auth');
    Route::post('/authenticate',                  'AuthController@authenticate')->name('auth.authenticate');

    Route::get ('/logout',                        'AuthController@logout')->name('auth.logout');

    /*
     *  Create new profile
     */
    Route::get ('/register',                      'AuthController@register')->name('auth.register');
    Route::post('/register-now',                  'AuthController@registerNow')->name('auth.register-now');
});
