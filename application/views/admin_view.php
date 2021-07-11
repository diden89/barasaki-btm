<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="shortcut icon" href="<?php echo front_url($company->favicon); ?>">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title><?php echo $title; ?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link rel="stylesheet" href="<?php echo front_url('assets/templates/admin'); ?>/bower_components/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="<?php echo front_url('assets/templates/admin'); ?>/bower_components/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="<?php echo front_url(); ?>assets/fonts/flaticon/font/flaticon.css">
	<link rel="stylesheet" href="<?php echo front_url('assets/templates/admin'); ?>/bower_components/Ionicons/css/ionicons.min.css">
	<link rel="stylesheet" href="<?php echo front_url('assets/templates/admin'); ?>/dist/css/AdminLTE.min.css">
	<link rel="stylesheet" href="<?php echo front_url('assets/templates/admin'); ?>/dist/css/skins/skin-blue.min.css">
	<link rel="stylesheet" href="<?php echo front_url('assets/templates/admin/bower_components/fullcalendar/dist')?>/fullcalendar.min.css">
	<link rel="stylesheet" href="<?php echo front_url('assets/templates/admin/bower_components/fullcalendar/dist')?>/fullcalendar.print.min.css" media="print">
	<link rel="stylesheet" href="<?php echo front_url('assets/templates/other')?>/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css">
	<link rel="stylesheet" href="<?php echo front_url('assets/templates/other')?>/jquery_waitme/waitMe.css">
	
	<?php
		if (isset($source_top) && is_array($source_top) && count($source_top) > 0)
		{
			echo implode("\n\t", $source_top)."\n";
		}
	?>

	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<header class="main-header">
			<a href="<?php echo base_url(); ?>" class="logo">
				<span class="logo-mini"><b>i</b>Bees</span>
				<span class="logo-lg"><?php echo TITLE2; ?></span>
			</a>
			<nav class="navbar navbar-static-top" role="navigation">
				<a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
					<span class="sr-only">Toggle navigation</span>
				</a>
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<li>
							<a href="<?php echo front_url(); ?>" target="_blank"><i class="fa fa-home"></i> View Website</a>
						</li>

					     <li class="dropdown messages-menu">
				            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
				              <i class="fa fa-envelope-o"></i>
				              <span class="label label-danger count"></span>
				            </a>
				            <ul class="dropdown-menu scrollable-menu-add messages-admin">
				         
				            </ul>
				          </li>
						<li class="dropdown user user-menu">
							<a href="#" class="dropdown-toggle">
								<span class="hidden-xs">Hi, <b><?php echo $this->session->userdata('fullname'); ?></b></span>
							</a>
						</li>
						<li>
							<a href="<?php echo site_url('auth/logout'); ?>"><i class="fa fa-sign-out"></i> Logout</a>
						</li>
					</ul>
				</div>
			</nav>
		</header>
		<aside class="main-sidebar">
			<section class="sidebar">
				<div class="user-panel">
					<div class="info">MAIN NAVIGATION</div>
				</div>
				<ul class="sidebar-menu" data-widget="tree">
					<li class="<?php echo ($page_active == 'Home' ? 'active' : ''); ?>"><a href="<?php echo site_url(''); ?>"><i class="fa fa-home"></i> <span>Home</span></a></li>
					<?php echo $menu; ?>
				</ul>
			</section>
		</aside>
		<div class="content-wrapper">
			<section class="content-header">
				<h1><?php echo $page_active; ?></h1>
				<ol class="breadcrumb">
					<li>Admin</li>
					<li class="active"><i class="<?php echo $page_icon; ?>"></i> <?php echo $page_active; ?></li>
				</ol>
			</section>
			<section class="content container-fluid"><?php print $body; ?></section>
		</div>
		<footer class="main-footer">
			<div class="pull-right hidden-xs">Developed by Al Gaza Solution</div>
			<strong>Copyright &copy; 2019 <a href="<?php echo front_url(); ?>">Barasaki Semesta, PT</a>.</strong> All rights reserved.
		</footer>
	</div>
	<script src="<?php echo front_url('assets/templates/admin'); ?>/bower_components/jquery/dist/jquery.min.js"></script>
	<script src="<?php echo front_url('assets/templates/admin'); ?>/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="<?php echo front_url('assets/templates/admin'); ?>/dist/js/adminlte.min.js"></script>
	<script src="<?php echo front_url('assets/templates/admin'); ?>/plugins/toastr/toastr.min.js"></script>
	<script src="<?php echo front_url(); ?>assets/templates/other/jquery_popup/js/popup.js"></script> 
	<script src="<?php echo front_url(); ?>assets/templates/other/sweetalert2/sweetalert2.min.js"></script> 
	<script src="<?php echo front_url(); ?>assets/templates/other/jquery_waitme/waitMe.js"></script> 
	<script src="<?php echo front_url(); ?>assets/templates/other/jquery_validation/js/validation.js"></script> 
	<script src="<?php echo front_url(); ?>assets/js/scripts.js"></script> 
	<?php
		if (isset($source_bot) && is_array($source_bot) && count($source_bot) > 0)
		{
			echo implode("\n\t", $source_bot)."\n";
		}
	?>
	<script type="text/javascript">
		var siteUrl = '<?php echo base_url(); ?>';
		var frontUrl = '<?php echo front_url(); ?>';

		$(document).ready(function () {
			$('.testing').each(function() {
				var $this = $(this);
				
				if ($this.hasClass('active')) {
					// $this.parent().parent().trigger('click');
					// $this.parent().parent().parent().addClass('active menu-open');
					$this.parent().parent().addClass('menu-open');
					$this.parent().parent().css('height', 'auto');
					$this.parent().css('display', 'block');
				}
			});
		});
	</script>
	<script src="<?php echo front_url('assets/templates/admin/bower_components/moment')?>/moment.js"></script>
	<script src="<?php echo front_url('assets/templates/admin/bower_components/fullcalendar/dist')?>/fullcalendar.min.js"></script>
	<script src="<?php echo front_url('assets/js/admin/'); ?>admin_algaza.js"></script>
</body>
</html>