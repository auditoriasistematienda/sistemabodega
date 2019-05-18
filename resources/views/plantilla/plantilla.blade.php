
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SISTEMA GLOBAL</title>
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="{{asset('plantilla/bower_components/bootstrap/dist/css/bootstrap.min.css')}}">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{asset('plantilla/bower_components/font-awesome/css/font-awesome.min.css')}}">
    <!-- Ionicons -->
    <link rel="stylesheet" href="{{asset('plantilla/bower_components/Ionicons/css/ionicons.min.css')}}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{asset('plantilla/dist/css/adminlte.min.css')}}">
    <link rel="stylesheet" href="{{asset('plantilla/dist/css/skins/skin-blue.min.css')}}">
    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="skin-blue" data-spy="scroll" data-target="#scrollspy">
    <div class="wrapper">
        <header class="main-header">
            <!-- Logo -->
            <a href="" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini"><b>Sis</b>Log</span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg"><b>Sistema Logístico</b></span>
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">Toggle navigation</span>
                </a>
                <!-- Navbar Right Menu -->
                <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <li><a href=""><i class="fa fa-mail-reply"></i> Cerrar Sesión</a></li>
                </ul>
                </div>
            </nav>
        </header>

        <aside class="main-sidebar">
            <!-- sidebar: style can be found in sidebar.less -->
            <div class="sidebar" id="scrollspy">

            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu" data-widget="tree">
                <li class="header">MENú DE OPCIONES</li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-users"></i>
                        <span>Empleados</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href=""><i class="fa fa-address-book"></i> Registro de Empleados</a></li>
                        <li><a href=""><i class="fa fa-circle-o"></i> Graficos estadisticos</a></li>
                    </ul>
                </li>
                <li class="active"><a href=""><i class="fa fa-circle-o"></i> Empleados</a></li>

                <hr class="sidebar-divider my-1">
                <li class="nav-item">
                    <a class="nav-link" href="{{url('cliente')}}">
                    <i class="fa fa-address-book"></i>
                    <span>Clientes</span></a>
                </li>

                <hr class="sidebar-divider my-1">
                <li class="nav-item">
                    <a class="nav-link" href="{{url('proveedor')}}">
                    <i class="fa fa-address-book"></i>
                    <span>Proveedor</span></a>
                </li>

                <hr class="sidebar-divider my-1">
                <li>
                    <a href="">
                    <i class="fa fa-circle-o"></i>
                    <span>Ventas</span></a>
                </li>

                <hr class="sidebar-divider my-1">
                <li>
                    <a href="">
                    <i class="fa fa-circle-o"></i>
                    <span>Reportes</span></a>
                </li>

                <hr class="sidebar-divider my-1">
                <li>
                    <a href="">
                    <i class="fa fa-circle-o"></i>
                    <span>Reportes</span></a>
                </li>
            </ul>
            </div>
            <!-- /.sidebar -->
        </aside>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            @yield('contenido')
        </div>

        <footer class="main-footer">
            <!-- To the right -->
            <div class="pull-right hidden-xs">
                <a href="" class="btn-lg"><i class="fa fa-facebook-official"></i></a>
                <a href="" class="btn-lg"><i class="fa fa-instagram"></i></a>
            </div>
            <!-- Default to the left -->
            <strong>Copyright &copy; 2019 <a href="" target="_blank">AdminLTE</a>.</strong> All rights reserved.
        </footer>

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Create the tabs -->
            <div class="pad">
            This is an example of the control sidebar.
            </div>
        </aside><!-- /.control-sidebar -->
        <!-- Add the sidebar's background. This div must be placed
             immediately after the control sidebar -->
        <div class="control-sidebar-bg"></div>

    </div>

    <!-- jQuery 3 -->
    <script src="{{asset('plantilla/bower_components/jquery/dist/jquery.min.js')}}"></script>
    <!-- Bootstrap 3.3.7 -->
    <script src="{{asset('plantilla/bower_components/bootstrap/dist/js/bootstrap.min.js')}}"></script>
    <!-- AdminLTE App -->
    <script src="{{asset('plantilla/dist/js/adminlte.min.js')}}"></script>

</body>
</html>