@extends('plantilla.plantilla')
@section('contenido')
<section class="content-header">
  <h1>
    Registrar Cliente
  </h1>
</section>
<section class="content">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h4 class="box-title">Agregar Cliente</h4>
                </div>
                <form role="form" action="">
                    <div class="box-body">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="">DNI</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Direccion</label>
                                    <input type="text" class="form-control">
                                </div>
{{--                                <div class="form-group">--}}
{{--                                    <div class="input-group date"></div>--}}
{{--                                    <label for="">Fecha Nacimiento</label>--}}
{{--                                    <input type="text" class="form-control pull-right" id="datepicker">--}}
{{--                                </div>--}}
                                <div class="form-group">
                                    <label>Fecha de Nacimiento:</label>
                                    <div class="input-group date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" class="form-control pull-right" id="datepicker">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="">Apellidos</label>
                                    <input type="text" class="form-control">
                                </div>

                                <div class="form-group">
                                    <label for="">Telefono</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Sexo</label>
                                    <select name="" id="" class="form-control"></select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="">Nombres</label>
                                    <input type="text" class="form-control">
                                </div>

                                <div class="form-group">
                                    <label for="">Email</label>
                                    <input type="email" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Tipo de Usuario</label>
                                    <select name="" id="" class="form-control"></select>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
</section>
@endsection
