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

//MAIN
Route::group(['namespace' => 'Main'], function() {

    Route::get('/','Home@showHomePage')->name('home');

    Route::post('/category','Categories@addCategory')->name('add.category');
    Route::post('/category/sub','Categories@addSubCategory')->name('add.sub.category');
    Route::post('/payment','Payments@addPayment')->name('add.payment');


    Route::get('/ajax', 'Ajax@ajaxSubCategories')->name('ajax.sub.categories');
    Route::get('/ajax/payments', 'Ajax@ajaxPayments')->name('ajax.payments');
    Route::get('/ajax/categories', 'Ajax@ajaxCategories')->name('ajax.categories');

    Route::delete('/delete/category/{id}', 'Categories@deleteCategory')->name('delete.category');
    Route::delete('/delete/sub-category/{id}', 'Categories@deleteSubCategory')->name('delete.sub.category');
    Route::delete('/delete/payment/{id}', 'Payments@deletePayment')->name('delete.payment');
});

//AUTH
Route::group(['namespace' => 'Auth'], function() {
    Route::get('/login','LoginController@showLoginForm')->name('login.show');
    Route::post('/login','LoginController@login')->name('login');

    Route::post('/logout','LoginController@logout')->name('logout');

    Route::get('/register','RegisterController@showRegistrationForm')->name('register.show');
    Route::post('/register','RegisterController@register')->name('register');
});
