<?php

namespace SistemaGlobal\Http\Controllers;

use SistemaGlobal\Rutas;
use Illuminate\Http\Request;

class RutasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view ('rutas.index');


    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view ('rutas.create');

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
     * @param  \SistemaGlobal\Rutas  $rutas
     * @return \Illuminate\Http\Response
     */
    public function show(Rutas $rutas)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \SistemaGlobal\Rutas  $rutas
     * @return \Illuminate\Http\Response
     */
    public function edit(Rutas $rutas)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \SistemaGlobal\Rutas  $rutas
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Rutas $rutas)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \SistemaGlobal\Rutas  $rutas
     * @return \Illuminate\Http\Response
     */
    public function destroy(Rutas $rutas)
    {
        //
    }
}
