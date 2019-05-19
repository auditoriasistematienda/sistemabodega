@extends('plantilla.plantilla')
@section('contenido')
<section class="content-header">
  <h1>
    Registrar Ruta
  </h1>
</section>
<section class="content">
    <div class="row">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h4 class="box-title">Agregar Ruta</h4>
            </div>
            <form action="">
                <div class="box-body">
                    <div class="form-group col-md-6">
                        <label for="">Transporte</label>
                        <select name="" id="" class="form-control">
                            <option value="" hidden>--- Seleccione ---</option>
                        </select>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="">Cliente</label>
                        <select name="" id="" class="form-control">
                            <option value="" hidden>--- Seleccione ---</option>
                        </select>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="">Fecha Salida</label>
                        <input type="date" class="form-control">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="">Fecha Retorno</label>
                        <input type="date" class="form-control">
                    </div>
                    <div class="form-group col-md-6">
                        <input type="submit" class="btn btn-primary" value="Registrar">
                        <a href="{{url('rutas')}}" class="btn btn-danger">Cancelar</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
@endsection