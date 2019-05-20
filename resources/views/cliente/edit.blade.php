@extends('plantilla.plantilla')
@section('contenido')
    <section class="content-header">
        <h1>
            Modificar Cliente
        </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h4 class="box-title">Modificar Cliente</h4>
                </div>
                <form action="{{url('')}}" method="POST">
                    @method('')
                    {{ csrf_field() }}
                    <div class="box-body">
                        <div class="form-group col-md-6">
                            <label for="">DNI</label>
                            <input type="text" value="{{$cliente->cli_dni}}" name="cli_dni" class="form-control">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">Apellidos</label>
                            <input type="text" value="{{$cliente->cli_apellidos}}" name="cli_apellidos" class="form-control">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">Nombres</label>
                            <input type="text" value="{{$cliente->cli_nombres}}" name="cli_nombres" class="form-control">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">Direccion</label>
                            <input type="text" value="{{$cliente->cli_direccion}}" name="cli_direccion" class="form-control">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">Telefono</label>
                            <input type="text" value="{{$cliente->cli_telefono}}" name="cli_telefono" class="form-control">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">Sexo</label>
                            <select name="cliente_sexo" class="form-control" required>
                                @foreach ($sexo as $sexo)
                                    @if ($sexo->sexo_id == $cliente->cliente_sexo)
                                    <option value="{{$sexo->sexo_id}}" selected>{{$sexo->sexo_nombre}}</option>
                                    @else
                                    <option value="{{$sexo->sexo_id}}">{{$sexo->sexo_nombre}}</option>
                                    @endif
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">Fecha Nacimiento</label>
                            <input type="date" value="{{$cliente->cli_nacimiento}}" name="cli_nacimiento" class="form-control">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">Email</label>
                            <input type="email" name="cli_email" value="{{$cliente->cli_email}}" class="form-control">
                        </div>
                        <div class="form-group col-md-12">
                            <input type="submit" class="btn btn-warning" value="Modificar">
                            <a href="{{url('cliente')}}" class="btn btn-danger">Cancelar</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
@endsection
