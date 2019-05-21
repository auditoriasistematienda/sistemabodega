<?php

namespace SistemaGlobal\Http\Controllers;

use SistemaGlobal\ProductosAlmacen;
use Illuminate\Http\Request;
use DB;

class ProductosAlmacenController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = DB::table('productos_en_almacen')
        ->get();
        return view ('almacen.index', ['productos_en_almacen'=>$data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \SistemaGlobal\ProductosAlmacen  $productosAlmacen
     * @return \Illuminate\Http\Response
     */
    public function show(ProductosAlmacen $productosAlmacen)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \SistemaGlobal\ProductosAlmacen  $productosAlmacen
     * @return \Illuminate\Http\Response
     */
    public function edit(ProductosAlmacen $productosAlmacen)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \SistemaGlobal\ProductosAlmacen  $productosAlmacen
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ProductosAlmacen $productosAlmacen)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \SistemaGlobal\ProductosAlmacen  $productosAlmacen
     * @return \Illuminate\Http\Response
     */
    public function destroy(ProductosAlmacen $productosAlmacen)
    {
        //
    }
}
