@extends('plantilla.plantilla')
@section('contenido')
<section class="content-header">
  <h1>
    Registrar Proveedor
  </h1>
</section>
<section class="content">
    <div class="row">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h4 class="box-title">Agregar Proveedor</h4>
            </div>
            <form action="">
                <div class="box-body">
                    <div class="form-group col-md-6">
                        <label for="">Razon Social</label>
                        <input type="text" class="form-control">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="">Ruc</label>
                        <input type="text" class="form-control">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="">Direccion</label>
                        <input type="text" class="form-control">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="">Telefono</label>
                        <input type="text" class="form-control">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="">Email</label>
                        <input type="email" class="form-control">
                    </div>
                    <div class="form-group col-md-12">
                        <input type="submit" class="btn btn-primary" value="Registrar">
                        <a href="{{url('proveedor')}}" class="btn btn-danger">Cancelar</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
@endsection