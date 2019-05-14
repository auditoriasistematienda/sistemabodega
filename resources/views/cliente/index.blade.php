@extends('plantilla.plantilla')
@section('contenido')
<section class="content-header">
  <h1>
    PLANTILLA CLIENTE
  </h1>
</section>
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <a href="{{url('cliente/create')}}" class="btn btn-primary">Registrar Cliente</a>
                </div>
                <div class="box-body">
                    <table id="myTable" class="table table-bordered table-hover dataTable">
                        <thead>
                            <th>DNI</th>
                            <th>Apellidos</th>
                            <th>Nombres</th>
                            <th>Direccion</th>
                            <th>Telefono</th>
                            <th>Fecha_Nac</th>
                            <th>Email</th>
                            <th>Sexo</th>
                            <th>usuario</th>
                            <th>Opciones</th>

                        </thead>
                        <tbody>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
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