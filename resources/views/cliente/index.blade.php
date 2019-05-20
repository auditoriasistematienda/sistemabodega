@extends('plantilla.plantilla')
@section('contenido')
<section class="content-header">
    <h1>PLANILLA CLIENTE</h1>
        <div class="col-xs-6">
            @if (session('status'))
            <div class="alert alert-success">
                {{ session('status') }}
            </div>
            @endif
        </div>
</section>
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <a href="{{url('cliente/create')}}" class="btn btn-primary">Registrar Cliente</a>
                </div>
                <div class="box-body">
                    <table id="myTable" class="table table-bordered table-hover">
                        <thead>
                            <th>DNI</th>
                            <th>Apellidos</th>
                            <th>Nombres</th>
                            <th>Direccion</th>
                            <th>Telefono</th>
                            <th>Fecha_Nac</th>
                            <th>Email</th>
                            <th>Sexo</th>
                            <th>Opciones</th>

                        </thead>
                        <tbody>
                        @foreach($clientes as $cli)
                            <tr>
                                <td>{{$cli->cli_dni}}</td>
                                <td>{{$cli->cli_apellidos}}</td>
                                <td>{{$cli->cli_nombres}}</td>
                                <td>{{$cli->cli_direccion}}</td>
                                <td>{{$cli->cli_telefono}}</td>
                                <td>{{$cli->cli_nacimiento}}</td>
                                <td>{{$cli->cli_email}}</td>
                                <td>{{$cli->sexo_nombre}}</td>
                                <td>
                                    <a href="" class="btn btn-sm btn-warning">Editar</a>
                                    <a data-toggle="modal" data-target="#modal-delete-{{$cli->cli_id}}" class="btn btn-danger btn-sm" href="">Eliminar</a>
                                    
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection

@section('scripts')
<script>
$(document).ready( function () {
    $('#myTable').DataTable();
} );
</script>
@endsection