@extends('plantilla.plantilla')
@section('contenido')
<section class="content-header">
    <h1>Productos en Almacen</h1>
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
                    <a href="{{url('almacen/create')}}" class="btn btn-primary">Registrar ingreso</a>
                </div>
                <div class="box-body">
                    <table id="myTable" class="table table-bordered table-hover">
                        <thead>
                            <th>Codigo de Producto</th>
                            <th>Stock</th>
                            <th>Codigo de almacen</th>
                            <th>Opciones</th>
                        </thead>
                        <tbody>
                        @foreach($productos_en_almacen as $prod)
                            <tr>
                                <td>{{$prod->prod_id}}</td>
                                <td>{{$prod->prodAlm_stock}}</td>
                                <td>{{$prod->alm_id}}</td>
                                <td>
                                    <a href="{{url('almacen/'.$prod->prodAlm_id.'/edit')}}" class="btn btn-sm btn-warning">Editar</a>
                                    <a data-toggle="modal" data-target="#modal-delete-{{$prod->prodAlm_id}}" class="btn btn-danger btn-sm" href="">Eliminar</a>
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