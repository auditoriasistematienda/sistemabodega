@extends('plantilla.plantilla')
@section('contenido')
<section class="content-header">
  <h1>
    PLANTILLA DE EMPLEADOS
  </h1>
</section>
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <a href="{{url('empleado/create')}}" class="btn btn-primary">Registrar Empleado</a>
                </div>
                <div class="box-body">
                    <table id="myTable" class="table table-bordered table-hover dataTable">
                        <thead>
                            <th>DNI</th>
                            <th>Apellidos</th>
                            <th>Nombres</th>
                            <th>Telefono</th>
                            <th>Fecha_Nac</th>
                            <th>Email</th>
                            <th>Sexo</th>
                            <th>Opciones</th>

                        </thead>
                        <tbody>
                        @foreach($empleados as $emp)
                            <tr>
                                <td>{{$emp->emp_dni}}</td>
                                <td>{{$emp->emp_apellidos}}</td>
                                <td>{{$emp->emp_nombres}}</td>
                                <td>{{$emp->emp_telefono}}</td>
                                <td>{{$emp->emp_nacimiento}}</td>
                                <td>{{$emp->emp_email}}</td>
                                <td>{{$emp->emp_sexo}}</td>
                                <td>
                                
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