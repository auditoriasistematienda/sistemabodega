@extends('plantilla.plantilla')
@section('contenido')
<section class="content-header">
  <h1>
    Registrar Cliente
  </h1>
</section>
<section class="content">
    <div class="row">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Agregar Cliente</h3>
            </div>
            <form action="">
                <div class="box-body">
                    <div class="form-group col-md-6">
                        <label for="">DNI</label>
                        <input type="text" class="form-control">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="">Apellidos</label>
                        <input type="text" class="form-control">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="">Nombres</label>
                        <input type="text" class="form-control">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="">Direccion</label>
                        <input type="text" class="form-control">
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
@endsection
