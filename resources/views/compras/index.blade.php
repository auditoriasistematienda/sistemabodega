@extends('plantilla.plantilla')
@section('contenido')
<section class="content-header">
  <h1>
    PLANILLA DE COMPRAS
  </h1>
</section>
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <a href="{{url('compras/create')}}" class="btn btn-primary">Registrar Compra</a>
                </div>
                <div class="box-body">
                    <table id="myTable" class="table table-bordered table-hover dataTable">
                        <thead>
                            <th>Codigo</th>
                            <th></th>
                            <th></th>
                            <th></th>
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
