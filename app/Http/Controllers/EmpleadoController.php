<?php

namespace SistemaGlobal\Http\Controllers;

use SistemaGlobal\Empleado;
use Illuminate\Http\Request;
use DB;
use SistemaGlobal\User;
use Illuminate\Support\Facades\Hash;

class EmpleadoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = DB::table('empleados')->get();
        return view('empleado.index',['empleados'=>$data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('empleado.create');
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
            'emp_dni' => 'required|unique:empleados,emp_dni',
            'emp_apellidos' => 'required|max:50',
            'emp_nombres' => 'required|max:50',
            'emp_sexo' => 'required',
            'emp_nacimiento' => 'required',
            'emp_telefono' => 'nullable|min:7|max:13',
            'emp_email' => 'nullable'
        ]);
        $data = $request->all();
        User::create([
            'id' => $data['emp_dni'],
            'usuario' => $data['emp_dni'],
            'password' => Hash::make($data['emp_dni']),
        ]);
        $cliente = Empleado::create([
            'emp_dni' => $data['emp_dni'],
            'emp_apellidos' => $data['emp_apellidos'],
            'emp_nombres' => $data['emp_nombres'],
            'emp_sexo' => $data['emp_sexo'],
            'emp_nacimiento' => $data['emp_nacimiento'],
            'emp_telefono' => $data['emp_telefono'],
            'emp_email' => $data['emp_email'],
            'emp_usuario' => $data['emp_dni']
        ]);
        return redirect()->route('empleado.index')->with('status', 'Empleado agregado correctamente!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \SistemaGlobal\Empleado  $empleado
     * @return \Illuminate\Http\Response
     */
    public function show(Empleado $empleado)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \SistemaGlobal\Empleado  $empleado
     * @return \Illuminate\Http\Response
     */
    public function edit(Empleado $empleado)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \SistemaGlobal\Empleado  $empleado
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Empleado $empleado)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \SistemaGlobal\Empleado  $empleado
     * @return \Illuminate\Http\Response
     */
    public function destroy(Empleado $empleado)
    {
        //
    }
}
