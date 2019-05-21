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
    return view('auth.login');
});

Route::resource('cliente','ClienteController')->middleware('auth');
Route::resource('compras','ComprasController')->middleware('auth');
Route::resource('ventas','VentasController')->middleware('auth');
Route::resource('almacen','ProductosAlmacenController')->middleware('auth');
Route::resource('rutas','RutasController')->middleware('auth');
Route::resource('empleado','EmpleadoController')->middleware('auth');
Route::resource('proveedor','ProveedorController')->middleware('auth');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

