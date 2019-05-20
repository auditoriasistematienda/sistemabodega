<?php

namespace SistemaGlobal\Http\Controllers;

use SistemaGlobal\Proveedor;
use Illuminate\Http\Request;
use DB;

class ProveedorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = DB::table('proveedores')
                ->get();
       return view ('proveedor.index',['proveedores'=>$data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view ('proveedor.create');
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
            'prov_razonSocial' => 'required',
            'prov_ruc' => 'required|max:110',
            'prov_direccion' => 'required|max:50',
            'prov_telefono' => 'nullable',
            'prov_email' => 'nullable|max:70'
        ]);
        $data = $request->all();
        $prov = Proveedor::create($data);
        return redirect()->route('proveedor.index')->with('status', 'Proveedor Agregado exitosamente!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \SistemaGlobal\Proveedor  $proveedor
     * @return \Illuminate\Http\Response
     */
    public function show(Proveedor $proveedor)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \SistemaGlobal\Proveedor  $proveedor
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $prov = Proveedor::findOrFail($id);
        $sexo = DB::table('sexo')->get();
        return view('proveedor.edit',['prov'=>$prov, 'sexo'=>$sexo]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \SistemaGlobal\Proveedor  $proveedor
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Proveedor $proveedor)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \SistemaGlobal\Proveedor  $proveedor
     * @return \Illuminate\Http\Response
     */
    public function destroy(Proveedor $proveedor)
    {
        //
    }
}
