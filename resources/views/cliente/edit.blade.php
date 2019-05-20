@extends('plantilla.plantilla')
@section('contenido')
    <section class="content-header">
        <h1>
            Registrar Cliente
        </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h4 class="box-title">Agregar Cliente</h4>
                </div>
                <form action="{{url('cliente')}}" method="POST">
                    @method('POST')
                    {{ csrf_field() }}
                    <div class="box-body">
                        <div class="form-group col-md-6">
                            <label for="">DNI</label>
                            <input type="text" name="cli_dni" class="form-control">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">Apellidos</label>
                            <input type="text" name="cli_apellidos" class="form-control">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">Nombres</label>
                            <input type="text" name="cli_nombres" class="form-control">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">Direccion</label>
                            <input type="text" name="cli_direccion" class="form-control">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">Telefono</label>
                            <input type="text" name="cli_telefono" class="form-control">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">Sexo</label>
                            <select name="cli_sexo" id="" class="form-control">
                                <option value="" hidden>--- Seleccione ---</option>
                                <option value="1">Femenino</option>
                                <option value="2">Masculino</option>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">Fecha Nacimiento</label>
                            <input type="date" name="cli_nacimiento" class="form-control">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">Email</label>
                            <input type="email" name="cli_email" class="form-control">
                        </div>
                        <div class="form-group col-md-12">
                            <input type="submit" class="btn btn-primary" value="Registrar">
                            <a href="{{url('cliente')}}" class="btn btn-danger">Cancelar</a>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </section>
@endsection
