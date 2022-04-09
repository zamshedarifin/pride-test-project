<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return 'Hi';
});


Route::namespace('User')->prefix('user')->name('user.')->group(function () {
    Route::namespace('Auth')->group(function () {
        Route::get('/login', 'LoginController@showLoginForm')->name('login');
        Route::post('/login', 'LoginController@login')->name('login');
        Route::get('/logout', 'LoginController@logout')->name('logout');

        Route::get('/register', 'RegisterController@showRegistrationForm')->name('register');
        Route::post('/register', 'RegisterController@register');
    });

    Route::middleware('auth')->group(function () {
        Route::get('profile', 'UserController@index')->name('profile');
    });
});

Route::namespace('Admin')->prefix('admin')->name('admin.')->group(function () {
    Route::namespace('Auth')->group(function () {
        Route::get('/-auth', 'LoginController@showLoginForm')->name('login');
        Route::post('/-auth', 'LoginController@login')->name('login');
        Route::get('logout', 'LoginController@logout')->name('logout');
    });

    Route::middleware('admin')->group(function () {
        Route::get('dashboard', 'DashboardController@index')->name('dashboard');
        Route::get('products', 'DashboardController@products')->name('products');
        Route::match(['get','post'],'product-create', 'DashboardController@productCreate')->name('productCreate');
        Route::match(['get','post'],'product-update/{id}', 'DashboardController@productUpdate')->name('productUpdate');
        Route::get('product-destroy/{id}', 'DashboardController@productDestroy')->name('destroy');

    });

});

