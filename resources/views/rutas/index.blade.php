@extends('plantilla.plantilla')
@section('contenido')
<section class="content-header">
  <h1>
    RUTAS
  </h1>
</section>
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <a href="{{url('rutas/create')}}" class="btn btn-primary">Agregar Ruta</a>
                </div>
                <div class="box-body">
                    <table id="myTable" class="table table-bordered table-hover dataTable">
                        <thead>
                            <th>Transporte</th>
                            <th>Cliente</th>
                            <th>Fecha Salida</th>
                            <th>Fecha Retorno</th>
                        </thead>
                        <tbody>
                            <tr>
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