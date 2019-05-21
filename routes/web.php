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
    return view('plantilla.plantilla');
});
Route::resource('cliente','ClienteController');
Route::resource('compras','ComprasController');
Route::resource('ventas','VentasController');
Route::resource('almacen','ProductosAlmacenController');
Route::resource('rutas','RutasController');
Route::resource('empleado','EmpleadoController');
Route::resource('proveedor','ProveedorController');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

