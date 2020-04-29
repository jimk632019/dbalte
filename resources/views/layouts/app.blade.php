<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Τμήμα Πληροφορικής</title>
	
    <!-- Font Awesome -->
    <link rel="stylesheet" href="AdminLTE-3.0.2/plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">    
	<!-- daterange picker -->
	<link href="{{ asset('AdminLTE-3.0.2/plugins/daterangepicker/daterangepicker.css') }}" rel="stylesheet">
    <!-- iCheck for checkboxes and radio inputs -->
	<link href="{{ asset('AdminLTE-3.0.2/plugins/icheck-bootstrap/icheck-bootstrap.min.css') }}" rel="stylesheet">
    <!-- Tempusdominus Bbootstrap 4 -->
	<link href="{{ asset('AdminLTE-3.0.2/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css') }}" rel="stylesheet">
    <!-- Select2 -->
	<link href="{{ asset('AdminLTE-3.0.2/plugins/select2/css/select2.min.css') }}" rel="stylesheet">
	<link href="{{ asset('AdminLTE-3.0.2/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css') }}" rel="stylesheet">
    <!-- Theme style -->
	<link href="{{ asset('AdminLTE-3.0.2/css/adminlte.min.css') }}" rel="stylesheet">	
	<!-- Animate style https://daneden.github.io/animate.css/ -->
	<link rel="stylesheet" href="css/animate.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

</head>

<body class="hold-transition sidebar-mini sidebar-collapse text-sm">
    <div class="wrapper">
	
        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-gray navbar-dark text-sm">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#">
                        <i class="fas fa-bars"></i>
                    </a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="/" class="nav-link">Αρχική</a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="#" class="nav-link">Contact</a>
                </li>
            </ul>
           
            <!-- Right navbar links -->
            <ul class="navbar-nav ml-auto">
			
				<!-- Authentication Links -->
				@guest					
					<li class="nav-item">
						<a class="nav-link" href="{{ route('login') }}">Είσοδος</a>
					</li>
				@else
                <!-- Messages Dropdown Menu -->
                <li class="nav-item dropdown">
                    <a class="nav-link" data-toggle="dropdown" href="#">
                        <i class="far fa-comments"></i>
                        <span class="badge badge-danger navbar-badge">1</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">                                               
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">
                            <!-- Message Start -->
                            <div class="media">
                                <img src="AdminLTE-3.0.2/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
                                <div class="media-body">
                                    <h3 class="dropdown-item-title">
										Nora Silvester
										<span class="float-right text-sm text-warning">
											<i class="fas fa-star"></i>
										</span>
									</h3>
                                    <p class="text-sm">The subject goes here</p>
                                    <p class="text-sm text-muted">
                                        <i class="far fa-clock mr-1"></i> 4 Hours Ago
                                    </p>
                                </div>
                            </div>
                            <!-- Message End -->
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item dropdown-footer">Προβολή Μηνυμάτων</a>
                    </div>
                </li>
				
                <!-- Notifications Dropdown Menu -->
                <li class="nav-item dropdown">
                    <a class="nav-link" data-toggle="dropdown" href="#">
                        <i class="far fa-bell"></i>
                        <span class="badge badge-warning navbar-badge">1</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                        <span class="dropdown-header">15 Notifications</span>
                        <div class="dropdown-divider"></div>                       
                        <a href="#" class="dropdown-item">
                            <i class="fas fa-file mr-2"></i> 3 new reports
                            <span class="float-right text-muted text-sm">2 days</span>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item dropdown-footer">Προβολή Ειδοποιήσεων</a>
                    </div>
                </li>				
							
				<?php $userole = Auth::user()->getRoleNames(); ?>
																		
				<li class="nav-item dropdown">
					<a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
						{{ Auth::user()->name }} {{'('.$userole[0].')'}} <span class="caret"></span>
					</a>

					<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
						@can('create-account')
							<a class="dropdown-item" href="{{ route('register') }}">Δημιουργία λογαριασμού</a>
							<div class="dropdown-divider"></div>   
						@endcan						
						
						<a class="dropdown-item" href="{{ route('logout') }}"
							onclick="event.preventDefault();
							document.getElementById('logout-form').submit();">
							Έξοδος
						</a>

						<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
							@csrf
						</form>
					</div>
				</li>
				
                <li class="nav-item">
                    <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#">
                        <i class="fas fa-th-large"></i>
                    </a>
                </li>
				@endguest
            </ul>
			
        </nav>
        <!-- /.navbar -->
		
        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="" class="brand-link">
                <img src="img/dba.jpg" alt="Δ.Β.Α. Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
                <span class="brand-text font-weight-light">Δ.Β.Α.</span>
            </a>
            <!-- Sidebar -->
            <div class="sidebar">
                						
                <!-- Sidebar Menu -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column text-sm nav-legacy nav-compact nav-child-indent text-sm" data-widget="treeview" role="menu" data-accordion="false">
                        <!-- Add icons to the links using the .nav-icon class
							with font-awesome or any other icon font library -->
                        <li class="nav-item has-treeview menu-open">
                            <a href="#" class="nav-link active">
                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                <p>
                                    Starter Pages
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="#" class="nav-link ">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Active Page</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Inactive Page</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-th"></i>
                                <p>
                                    Simple Link
                                    <span class="right badge badge-danger">New</span>
                                </p>
                            </a>
                        </li>
						<li class="nav-item has-treeview">
                            <a href="#" class="nav-link active">
                                <i class="nav-icon fa fa-wrench"></i>
                                <p>
                                    Διαχείριση
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="{{ route('users.index') }}" class="nav-link ">
                                        <i class="fa fa-users nav-icon"></i>
                                        <p>Χρήστες</p>
                                    </a>
                                </li>                   
<li><a class="nav-link" href="{{ route('users.index') }}">Manage Users</a></li>								
                            </ul>
							<ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="#" class="nav-link active">
                                        <i class="fa fa-list-ul nav-icon"></i>
                                        <p>Δικαιώματα</p>
                                    </a>
                                </li>                               
                            </ul>
							<ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="#" class="nav-link active">
                                        <i class="fa fa-list-ul nav-icon"></i>
                                        <p>Ρόλοι</p>
                                    </a>
                                </li>                               
                            </ul>
                        </li>
                    </ul>
                </nav>
                <!-- /.sidebar-menu -->
            </div>
            <!-- /.sidebar -->
        </aside>
		
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">

				@yield('content')
				
        </div>
        <!-- /.content-wrapper -->

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
            <div class="p-3">
                <h5>Title</h5>
                <p>Sidebar content</p>
            </div>
        </aside>
        <!-- /.control-sidebar -->
		
        <!-- Main Footer -->
        <footer class="main-footer text-sm">
            <!-- To the right -->
            <div class="float-right d-none d-sm-inline">
				<a href="https://dbda.gr" target="_blank">Δημοτικό Βρεφοκομείο Αθηνών</a>                
            </div>
            <!-- Default to the left -->
            <strong>Copyright &copy; 2014-2019 
				<a href="https://adminlte.io" target="_blank">AdminLTE.io</a>
			</strong> All rights reserved.
        </footer>

    </div>
    <!-- ./wrapper -->

    <!-- REQUIRED SCRIPTS -->
    <!-- jQuery -->
	<script src="{{ asset('AdminLTE-3.0.2/plugins/jquery/jquery.min.js') }}"></script>	
    <!-- Bootstrap 4 -->
	<script src="{{ asset('AdminLTE-3.0.2/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <!-- Select2 -->
	<script src="{{ asset('AdminLTE-3.0.2/plugins/select2/js/select2.full.min.js') }}"></script>
    <!-- InputMask -->
	<script src="{{ asset('AdminLTE-3.0.2/plugins/moment/moment.min.js') }}"></script>
	<script src="{{ asset('AdminLTE-3.0.2/plugins/inputmask/min/jquery.inputmask.bundle.min.js') }}"></script>
    <!-- date-range-picker -->
	<script src="{{ asset('AdminLTE-3.0.2/plugins/daterangepicker/daterangepicker.js') }}"></script>
    <!-- bootstrap color picker -->
	<script src="{{ asset('jAdminLTE-3.0.2/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js') }}"></script>
    <!-- Tempusdominus Bootstrap 4 -->
	<script src="{{ asset('AdminLTE-3.0.2/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js') }}"></script>
    <!-- Bootstrap Switch -->
	<script src="{{ asset('AdminLTE-3.0.2/plugins/bootstrap-switch/js/bootstrap-switch.min.js') }}"></script>
    <!-- AdminLTE App -->
	<script src="{{ asset('AdminLTE-3.0.2/js/adminlte.min.js') }}"></script>
	<!-- ChartJS -->
	<script src="{{ asset('plugins/chart.js/Chart.min.js') }}"></script
	<!-- PAGE SCRIPTS -->
	<script src="{{ asset('dist/js/pages/dashboard2.js') }}"></script>
  
    <!-- Page script -->
    <script>
        $(function() {
            //Initialize Select2 Elements
            $('.select2').select2()

            //Initialize Select2 Elements
            $('.select2bs4').select2({
                theme: 'bootstrap4'
            })

            //Datemask dd/mm/yyyy
            $('#datemask').inputmask('dd/mm/yyyy', {
                placeholder: 'dd/mm/yyyy'
            })
            //Money Euro
            $('[data-mask]').inputmask()

            //Date range picker
            $('#reservation').daterangepicker()
                //Date range picker with time picker
            $('#reservationtime').daterangepicker({
                timePicker: true,
                timePickerIncrement: 30,
                locale: {
                    format: 'DD/MM/YYYY hh:mm A'
                }
            })

            $("input[data-bootstrap-switch]").each(function() {
                $(this).bootstrapSwitch('state', $(this).prop('checked'));
            });

        })
    </script>

</body>

</html>