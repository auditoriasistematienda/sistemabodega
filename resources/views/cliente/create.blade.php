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
                        <div class="col-md-2">
                            <div class="form-group">
                                <label for="">DNI</label>
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa fa-id-card-o"></i>
                                    </div>
                                    <input type="text" class="form-control pull-right">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="form-group">
                                <label for="">Nombres</label>
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa fa-user"></i>
                                    </div>
                                    <input type="text" class="form-control pull-right">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="form-group">
                                <label for="">Apellidos</label>
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa fa-user"></i>
                                    </div>
                                    <input type="text" class="form-control pull-right">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="">Dirección</label>
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa fa-road"></i>
                                    </div>
                                    <input type="text" class="form-control pull-right">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label for="">Telefono</label>
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa fa-mobile-phone"></i>
                                    </div>
                                    <input type="text" class="form-control pull-right">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label for="">Sexo</label>
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa fa-intersex"></i>
                                    </div>
                                    <select name="" id="" class="form-control"></select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
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
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="">Email</label>
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa fa-envelope-o"></i>
                                    </div>
                                    <input type="email" class="form-control pull-right">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="">Tipo de Usuario</label>
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa fa-address-card-o"></i>
                                    </div>
                                    <select name="" id="" class="form-control"></select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-4">
                            <input type="submit" class="btn btn-primary" value="Registrar">
                            <a href="{{url('cliente')}}" class="btn btn-danger">Cancelar</a>
                        </div>

                    </div>


                    </div>
                </form>
            </div>
</section>
@endsection
