@extends('plantilla.plantilla')
@section('contenido')
<section class="content-header">
  <h1>
    Registro de Compras
  </h1>
</section>
<section class="content">
    <div class="row">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h4 class="box-title">Agregar Compra</h4>
            </div>
            <form action="">
                <div class="box-body">
                    <div class="form-group col-md-6">
                        <label for="">Codigo</label>
                        <input type="text" class="form-control">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="">Codigo Proveedor</label>
                        <input type="text" class="form-control">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="">Compra</label>
                        <input type="text" class="form-control">
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
@endsection
