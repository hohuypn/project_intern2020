<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group([
    'prefix' => 'auth'
], function () {
    Route::post('login', 'AuthController@login')->name('login');
    Route::post('signup', 'AuthController@signup');
  
    Route::group([
      'middleware' => 'auth:api'
    ], function() {
        Route::get('logout', 'AuthController@logout');
        Route::get('me', 'AuthController@me');
    });
});

Route::resource('users', 'UserController');
Route::resource('roles', 'RoleController');
Route::resource('permissions', 'PermissionController');

//Category 
Route::resource('categories', 'CategoryController');
Route::get('productcate/{id}', 'ProductController@productcate');

Route::resource('products', 'ProductController');
Route::resource('contacts', 'ContactController');
Route::resource('slides', 'SlideController');
Route::resource('stores', 'StoreController');




//Shopping cart
Route::get('carts/{id}', 'CartItemController@index')->name('carts.index');
Route::post('carts', 'CartItemController@store')->name('carts.store');
Route::put('carts/{id}/plus', 'CartItemController@plus')->name('carts.plus');
Route::put('carts/{id}/minus', 'CartItemController@minus')->name('carts.minus');
Route::delete('carts/{id}', 'CartItemController@delete')->name('carts.destroy');

// Order
Route::get('order_details/{id}', 'Order_detailController@index');
Route::resource('orders', 'OrderController');