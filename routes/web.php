<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/cs', function () {
    return view('contact');
});

Route::get('/allproduct',[
    'uses'=>'ProductController@show', 
    'as'=>'all.product'
]);

Route::get('/allproduct/delete/{id}',[
    'uses'=>'ProductController@delete', 
    'as'=>'delete.product'
]);

Route::get('/editproduct/{id}',[
    'uses'=>'ProductController@edit', 
    'as'=>'edit.product'
]);

Route::post('updateproduct', [
    'uses'=>'ProductController@update',
    'as' => 'update.product'
]);

Route::post('searchproduct', [
    'uses'=>'ProductController@search',
    'as' => 'search.product'
]);

Route::get('/insertProduct',[
    'uses'=>'ProductController@create',
    'as'=>'product'
]);

Route::get('/insertCategory',[
    'uses'=>'CategoryController@create', 
    'as'=>'category'
]);

Route::get('/insertFeedback',[
    'uses'=>'FeedbackController@create', 
    'as'=>'feedback'
]);

Route::post('/addFeedback/store',[
    'uses'=>'FeedbackController@store',
    'as'=>'addFeedback.store'
]);

Route::get('/insertEmployee',[
    'uses'=>'EmployeeController@create', 
    'as'=>'employee'
]);

Route::post('/addEmployee/store',[
    'uses'=>'EmployeeController@store',
    'as'=>'addEmployee.store'
]);

Route::post('/addCategory/store',[
    'uses'=>'CategoryController@store',
    'as'=>'addCategory.store'
]);

Route::post('/addProduct/store',[
    'uses'=>'ProductController@store',
    'as'=>'addProduct.store'
]);

Route::get('/product',[
    'uses'=>'ProductController@showCartProduct', 
    'as'=>'all.product'
]);

Route::get('/product/{id}',[
    'uses'=>'ProductController@showProduct', 
    'as'=>'product.detail'
]);

Route::post('/addToCart',[
    'uses'=>'CartController@add',
    'as'=>'add.to.cart'
]);

Route::get('/myCart',[
    'uses'=>'CartController@show', 
    'as'=>'my.cart'
]);

Route::get('/myCart/delete/{id}',[
    'uses'=>'CartController@delete', 
    'as'=>'delete.cart'
]);

Route::post('/createorder',[
    'uses' => 'OrderController@add',
    'as' => 'create.order'
]);

Route::get('/myorder',[
    'uses'=> 'OrderController@show',
    'as' => 'my.order'
]);

// route for processing payment
Route::post('paypal', 'PaymentController@payWithpaypal');

// route for check status of the payment
Route::get('status', 'PaymentController@getPaymentStatus');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
