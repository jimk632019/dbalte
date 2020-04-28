<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Τμήμα Πληροφορικής</title>
	
    <!-- Font Awesome -->
    <link rel="stylesheet" href="AdminLTE-3.0.2/plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">    
	<link href="{{ asset('AdminLTE-3.0.2/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css') }}" rel="stylesheet">
    <!-- Theme style -->
	<link href="{{ asset('AdminLTE-3.0.2/css/adminlte.min.css') }}" rel="stylesheet">	
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
	<!-- Custom style -->
	<link href="{{ asset('css/main.css') }}" rel="stylesheet">	

</head>

<body class="hold-transition login-page bgrd">

    <div class="login-box">

        <div class="login-logo">			
			<img src="img/logo-dbda.png" class="mx-auto" width="250">			
        </div>
        <!-- /.login-logo -->

		<div class="card shadow">
			<div class="card-header">{{ __('Είσοδος') }}</div>

			<div class="card-body">
				<form method="POST" action="{{ route('login') }}">
					@csrf
					

					<div class="form-group row">
						<div class="col-md-12">
							<div class="input-group mb-2">
								<input id="login" type="text"
									   class="form-control{{ $errors->has('username') || $errors->has('email') ? ' is-invalid' : '' }}"
									   placeholder="Όνομα χρήστη" name="login" value="{{ old('username') ?: old('email') }}" required autofocus>
								<div class="input-group-append">
									<div class="input-group-text">
										<span class="fas fa-envelope"></span>
									</div>
								</div>
					 
								@if ($errors->has('username') || $errors->has('email'))
									<span class="invalid-feedback">
										<strong>{{ $errors->first('username') ?: $errors->first('email') }}</strong>
									</span>
								@endif
							</div>
						</div>
					</div>
					
					<div class="form-group row">
						<div class="col-md-12">
							<div class="input-group mb-2">
								<input id="password" type="password" 
										class="form-control @error('password') is-invalid @enderror" 
										placeholder="Κωδικός εισόδου" name="password" required autocomplete="current-password">
								<div class="input-group-append">
									<div class="input-group-text">
										<span class="fas fa-lock"></span>
									</div>
								</div>
														
								@error('password')
									<span class="invalid-feedback" role="alert">
										<strong>{{ $message }}</strong>
									</span>
								@enderror
							</div>
						</div>
					</div>
					
					<div class="form-group row mb-0">
						<div class="col-md-12">
							<button type="submit" class="btn btn-info btn-flat">
								Συνέχεια
							</button>
						</div>
					</div>
					
				</form>
			</div>
		</div>
		
    </div>
    <!-- /.login-box -->
	
	  <!-- REQUIRED SCRIPTS -->
    <!-- jQuery -->
	<script src="{{ asset('AdminLTE-3.0.2/plugins/jquery/jquery.min.js') }}"></script>	
    <!-- Bootstrap 4 -->
	<script src="{{ asset('AdminLTE-3.0.2/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <!-- AdminLTE App -->
	<script src="{{ asset('AdminLTE-3.0.2/js/adminlte.min.js') }}"></script>

</body>

</html>