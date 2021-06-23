<!DOCTYPE html>
<html>
<head>
	<title><?php echo TITLE; ?> | Log in</title>
	<meta charset="utf-8">
	<meta content="IE=edge" http-equiv="X-UA-Compatible">
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="shortcut icon" href="<?php echo front_url('assets/images/favicon.ico'); ?>">
	<link rel="stylesheet" href="<?php echo front_url('assets/templates/admin/bower_components/bootstrap/dist/css/bootstrap.min.css'); ?>">
	<link rel="stylesheet" href="<?php echo front_url('assets/templates/admin/bower_components/font-awesome/css/font-awesome.min.css'); ?>">
	<link rel="stylesheet" href="<?php echo front_url('assets/templates/admin/dist/css/AdminLTE.min.css'); ?>">

	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition login-page">
	<div class="login-box">
		<div class="login-logo">
			<a href="<?php echo base_url(); ?>"><?php echo TITLE2; ?></a>
		</div>
		<div class="login-box-body">
			<p class="login-box-msg">Sign in to start your session</p>
			<form action="<?php echo site_url('auth/login'); ?>" method="post" autocomplete="off">
				<div class="form-group has-feedback">
					<input type="text" name="txt_username" class="form-control" placeholder="Username" required="required">
					<span class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" name="txt_password" class="form-control" placeholder="Password" required="required">
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="social-auth-links text-center">
					<input type="hidden" name="action" value="login">
					<button type="submit" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-sign-in"></i> Sign in</button>
				</div>
			</form>
		</div>
		<div class="text-danger text-bold text-center"><?php echo (isset($msg) ? $msg : ''); ?></div>
	</div>
	<div class="modal fade">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title">Warning</h4>
				</div>
				<div class="modal-body"><p><?php echo (isset($msg) ? $msg : ''); ?></p></div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<script src="<?php echo front_url('assets/templates/admin/bower_components/jquery/dist/jquery.min.js'); ?>"></script>
	<script src="<?php echo front_url('assets/templates/admin/bower_components/bootstrap/dist/js/bootstrap.min.js'); ?>"></script>
	<script type="text/javascript">
		var msg = '<?php echo (isset($msg) ? $msg : ''); ?>';
	</script>
	<script src="<?php echo front_url('assets/js/admin/auth.js'); ?>"></script>
</body>
</html>
