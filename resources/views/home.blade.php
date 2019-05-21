<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sistema Logístico</title>
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="{{asset('plantilla/bower_components/bootstrap/dist/css/bootstrap.min.css')}}">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{asset('plantilla/bower_components/font-awesome/css/font-awesome.min.css')}}">
    <!-- Ionicons -->
    <link rel="stylesheet" href="{{asset('plantilla/bower_components/Ionicons/css/ionicons.min.css')}}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{asset('plantilla/dist/css/adminlte.min.css')}}">
    <link rel="stylesheet" href="{{asset('plantilla/dist/css/skins/skin-blue.min.css')}}">
    <!-- DataTables -->
    <link rel="stylesheet" href="http://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">

    <!-- daterange picker -->
    <link rel="stylesheet" href="{{asset('plantilla/bower_components/bootstrap-daterangepicker/daterangepicker.css')}}">
    <!-- iCheck for checkboxes and radio inputs -->
    <link rel="stylesheet" href="{{asset('plantilla/plugins/iCheck/all.css')}}">
    <!-- Bootstrap Color Picker -->
    <link rel="stylesheet" href="{{asset('plantilla/bower_components/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css')}}">
    <!-- Bootstrap time Picker -->
    <link rel="stylesheet" href="{{asset('plantilla/plugins/timepicker/bootstrap-timepicker.min.css')}}">
    <!-- Select2 -->
    <link rel="stylesheet" href="{{asset('plantilla/bower_components/select2/dist/css/select2.min.css')}}">
    <!-- bootstrap datepicker -->
    <link rel="stylesheet" href="{{asset('plantilla/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css')}}">

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
                    <li><a href=""><i class="fa fa-sign-out"></i> Cerrar Sesión</a></li>
                </ul>
                </div>
            </nav>
        </header>

        <aside class="main-sidebar">
            <!-- sidebar: style can be found in sidebar.less -->
            <div class="sidebar" id="scrollspy">

            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu" data-widget="tree">
                <li class="header">MENU DE OPCIONES</li>

                <li>
                    <a href="">
                        <i class="fa fa-dashboard"></i>
                        <span>Inicio</span>
                    </a>
                </li>

                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-database"></i>
                        <span>Mantenimiento</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="{{url('empleado')}}"><i class="fa fa-address-card"></i> Registro de Empleados</a></li>
                        <li><a href=""><i class="fa fa-archive"></i> Registro de Almacenes</a></li>
                    </ul>
                </li>

                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-users"></i>
                        <span>Clientes</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="{{url('cliente')}}"><i class="fa fa-address-book"></i> Registro de Clientes</a></li>
                    </ul>
                </li>

                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-shopping-cart"></i>
                        <span>Compras</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="{{url('proveedor')}}"><i class="fa fa-address-book"></i> Registro de Proveedores</a></li>
                        <li><a href="{{url('compras')}}"><i class="fa fa-book"></i> Registro de Compras</a></li>
                        <li><a href=""><i class="fa fa-pie-chart"></i> Graficos Estadististicos</a></li>
                    </ul>
                </li>

                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-shopping-bag"></i>
                        <span>Ventas</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="{{url('ventas')}}"><i class="fa fa-shopping-basket"></i> Registro de Ventas</a></li>
                        <li><a href=""><i class="fa fa-book"></i> Productos Disponibles</a></li>
                        <li><a href=""><i class="fa fa-pie-chart"></i> Graficos Estadististicos</a></li>
                    </ul>
                </li>

                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-archive"></i>
                        <span>Almacen</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="{{url('almacen')}}"><i class="fa fa-book"></i> Productos en Almacen</a></li>
                        <li><a href=""><i class="fa fa-pie-chart"></i> Graficos Estadististicos</a></li>
                    </ul>
                </li>

                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-road"></i>
                        <span>Rutas</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="{{url('rutas')}}"><i class="fa fa-book"></i> Registro de Rutas</a></li>
                        <li><a href=""><i class="fa fa-pie-chart"></i> Graficos Estadististicos</a></li>
                    </ul>
                </li>

                <li>
                    <a href="">
                        <i class="fa fa-shopping-basket"></i>
                        <span>Mis pedidos</span>
                    </a>
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
                <a href="https://github.com/globalauditoria/SistemaGlobal" class="btn-lg" target="_blank"><i class="fa fa-github"></i></a>
                <a href="https://ucv.edu.pe/" class="btn-lg" target="_blank"><i class="fa fa-university"></i></a>
            </div>
            <!-- Default to the left -->
            <strong>Copyright &copy; 2019 <a href="https://github.com/globalauditoria" target="_blank">Alumnos de Auditorio y Seguridad de la Información</a>.</strong> All rights reserved.
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

    <!-- FastClick -->
    <script src="{{asset('plantilla/bower_components/fastclick/lib/fastclick.js')}}"></script>
    
    <!-- Sparkline -->
    <script src="{{asset('plantilla/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js')}}"></script>
    <!-- jvectormap  -->
    <script src="{{asset('plantilla/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js')}}"></script>
    <script src="{{asset('plantilla/plugins/jvectormap/jquery-jvectormap-world-mill-en.js')}}"></script>
    <!-- SlimScroll -->
    <script src="{{asset('plantilla/bower_components/jquery-slimscroll/jquery.slimscroll.min.js')}}"></script>
    <!-- ChartJS -->
    <script src="{{asset('plantilla/bower_components/chart.js/Chart.js')}}"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="{{asset('plantilla/dist/js/pages/dashboard2.js')}}"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="{{asset('plantilla/dist/js/demo.js')}}"></script>

    <!-- Select2 -->
    <script src="{{asset('plantilla/bower_components/select2/dist/js/select2.full.min.js')}}"></script>
    <!-- InputMask -->
    <script src="{{asset('plantilla/plugins/input-mask/jquery.inputmask.js')}}"></script>
    <script src="{{asset('plantilla/plugins/input-mask/jquery.inputmask.date.extensions.js')}}"></script>
    <script src="{{asset('plantilla/plugins/input-mask/jquery.inputmask.extensions.js')}}"></script>

    <!-- date-range-picker -->
    <script src="{{asset('plantilla/bower_components/moment/min/moment.min.js')}}"></script>
    <script src="{{asset('plantilla/bower_components/bootstrap-daterangepicker/daterangepicker.js')}}"></script>
    <!-- bootstrap datepicker -->
    <script src="{{asset('plantilla/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js')}}"></script>
    <!-- bootstrap color picker -->
    <script src="{{asset('plantilla/bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js')}}"></script>
    <!-- bootstrap time picker -->
    <script src="{{asset('plantilla/plugins/timepicker/bootstrap-timepicker.min.js')}}"></script>
    <!-- SlimScroll -->
    <script src="{{asset('plantilla/bower_components/jquery-slimscroll/jquery.slimscroll.min.js')}}"></script>
    <!-- iCheck 1.0.1 -->
    <script src="{{asset('plantilla/plugins/iCheck/icheck.min.js')}}"></script>

    <!-- DataTables -->
    <script src="http://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    @yield('scripts')
    <script>
        $(function () {
            //Initialize Select2 Elements
            $('.select2').select2()

            //Datemask dd/mm/yyyy
            $('#datemask').inputmask('dd/mm/yyyy', {'placeholder': 'dd/mm/yyyy'})
            //Datemask2 mm/dd/yyyy
            $('#datemask2').inputmask('mm/dd/yyyy', {'placeholder': 'mm/dd/yyyy'})
            //Money Euro
            $('[data-mask]').inputmask()

            //Date range picker
            $('#reservation').daterangepicker()
            //Date range picker with time picker
            $('#reservationtime').daterangepicker({
                timePicker: true,
                timePickerIncrement: 30,
                format: 'MM/DD/YYYY h:mm A'
            })
            //Date range as a button
            $('#daterange-btn').daterangepicker(
                {
                    ranges: {
                        'Today': [moment(), moment()],
                        'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                        'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                        'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                        'This Month': [moment().startOf('month'), moment().endOf('month')],
                        'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                    },
                    startDate: moment().subtract(29, 'days'),
                    endDate: moment()
                },
                function (start, end) {
                    $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
                }
            )

            //Date picker
            $('#datepicker').datepicker({
                autoclose: true
            })

            //iCheck for checkbox and radio inputs
            $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
                checkboxClass: 'icheckbox_minimal-blue',
                radioClass: 'iradio_minimal-blue'
            })
            //Red color scheme for iCheck
            $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
                checkboxClass: 'icheckbox_minimal-red',
                radioClass: 'iradio_minimal-red'
            })
            //Flat red color scheme for iCheck
            $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
                checkboxClass: 'icheckbox_flat-green',
                radioClass: 'iradio_flat-green'
            })

            //Colorpicker
            $('.my-colorpicker1').colorpicker()
            //color picker with addon
            $('.my-colorpicker2').colorpicker()

            //Timepicker
            $('.timepicker').timepicker({
                showInputs: false
            })
        })
    </script>
</body>
</html>
