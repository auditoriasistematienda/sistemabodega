@extends('plantilla.plantilla')
@section('contenido')
<section class="content-header">
  <h1>
    PLANTILLA PROVEEDOR
  </h1>
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
                    <a href="{{url('proveedor/create')}}" class="btn btn-primary">Registrar Proveedor</a>
                </div>
                <div class="box-body">
                    <table id="myTable" class="table table-bordered table-hover dataTable">
                        <thead>
                            <th>Codigo</th>
                            <th>Razon Social</th>
                            <th>Ruc</th>
                            <th>Direccion</th>
                            <th>Telefono</th>
                            <th>Email</th>
                            <th>Opciones</th>

                        </thead>
                        <tbody>
                            @foreach($proveedores as $prov)
                            <tr>
                                <td>{{$prov->prov_id}}</td>
                                <td>{{$prov->prov_razonSocial}}</td>
                                <td>{{$prov->prov_ruc}}</td>
                                <td>{{$prov->prov_direccion}}</td>
                                <td>{{$prov->prov_telefono}}</td>
                                <td>{{$prov->prov_email}}</td>
                                <td>
                                    <a class="btn btn-sm btn-warning" href="">EDITAR</a>
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