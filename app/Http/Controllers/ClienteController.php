<?php

namespace SistemaGlobal\Http\Controllers;

use SistemaGlobal\Cliente;
use Illuminate\Http\Request;
use DB;

class ClienteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = DB::table('clientes')
                ->join('sexo','sexo.sexo_id','cli_sexo')
                ->get();
        return view ('cliente.index',['clientes'=>$data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view ('cliente.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'cli_dni' => 'required|unique:clientes,cli_dni|numeric|digits:8',
            'cli_apellidos' => 'required|max:50',
            'cli_nombres' => 'required|max:50',
            'cli_sexo' => 'required',
            'cli_direccion' => 'nullable|max:70',
            'cli_nacimiento' => 'required',
            'cli_telefono' => 'nullable|min:7|max:13',
            'cli_email' => 'nullable'
        ]);
        $data = $request->all();
        $cliente = Cliente::create($data);
        return redirect()->route('cliente.index')->with('status', 'Cliente agregado correctamente!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \SistemaGlobal\Cliente  $cliente
     * @return \Illuminate\Http\Response
     */
    public function show(Cliente $cliente)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \SistemaGlobal\Cliente  $cliente
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = Cliente::findOrFail($id);
        $sexo = DB::table('sexo')->get();
        return view('cliente.edit',['cliente'=>$data,'sexo'=>$sexo]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \SistemaGlobal\Cliente  $cliente
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Cliente $cliente)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \SistemaGlobal\Cliente  $cliente
     * @return \Illuminate\Http\Response
     */
    public function destroy(Cliente $cliente)
    {
        //
    }
}
