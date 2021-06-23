<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<base href="<?php echo base_url(); ?>" />
		<link rel="shortcut icon" href="<?php echo base_url(); ?>assets/images/favicon.ico">
		<title><?php echo $title; ?></title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- add by diden -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700,800">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/bootstrap/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/animate.css">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/owl.carousel.min.css">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/bootstrap-datetimepicker.css">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/jquery.timepicker.min.css">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/fonts/ionicons/css/ionicons.min.css">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/fonts/fontawesome/css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/fonts/flaticon/font/flaticon.css">
		<!-- Theme Style -->
		<link rel="stylesheet" type="text/css"  href="<?php echo base_url(); ?>assets/css/style.css">
	</head>
	<body>
		<!-- start header -->
		<header role="banner">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container">
					<a class="navbar-brand" href="<?php echo base_url();?>"><img src="<?php echo base_url(); ?>assets/images/compro/logo.png" width="150px"/></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample05" aria-controls="navbarsExample05" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarsExample05">
						<ul class="navbar-nav mr-auto pl-lg-5 pl-0">
							<?php echo $menu; ?>
						</ul>
						<ul class="navbar-nav ml-auto cta-btn">
							<li class="nav-item">
								<a class="nav-link">
									Ibees
								</a>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
		<!-- end header -->
		<!-- start Content -->
		<?php print $body."\n"; ?>
		<!-- end Content -->
		<!-- start footer -->
		<footer class="site-footer" role="contentinfo">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<p class="copyright">Theme use Al Gaza Solution. Designed by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
					</div>
					<div class="col-md-3">
						<ul class="list-unstyled footer-link">
						<?php
						$link = '';
						
						foreach ($footer as $k => $v)
						{
							echo '<li class="d-flex"><span class="mr-3">A:</span><span class="text-black">'.$v->address.'</span></li>';
							
							$i = 0; 

							foreach ($v->contact as $k1 => $v1)
							{
								if ( ! empty($v1['url']))
								{
									echo '<li class="d-flex"><span class="mr-3">'.$v1['c_type'].' :</span><span class="text-black"><a href="https://api.whatsapp.com/send?phone='.$v1['c_url'].'&text='.$v1['c_message'].'" target="_blank">'.$v1['c_detail'].'</a></span></li>';
								}
								else
								{
									echo '<li class="d-flex"><span class="mr-3">'.$v1['c_type'].' :</span><span class="text-black">'.$v1['c_detail'].'</span></li>';
								}


								$i++;
							}

							foreach ($v->email as $k1 => $v1)
							{
								echo '<li class="d-flex"><span class="mr-3">E:</span><span class="text-black">'.$v1.'</span></li>';
							}
						}
						?>
						</ul>
					</div>
					<div class="col-md-3">
						<h3>Quick Links</h3>
						<ul class="list-unstyled footer-link">
							<li><a href="#">About</a></li>
							<li><a href="#">Services</a></li>
							<li><a href="#">Works</a></li>
							<li><a href="#">Contact</a></li>
						</ul>
					</div>
					<div class="col-md-3">
						<h3>Social</h3>
						<ul class="list-unstyled footer-link d-flex footer-social">
						<li><a href="#" class="p-2"><span class="fa fa-twitter"></span></a></li>
						<li><a href="#" class="p-2"><span class="fa fa-facebook"></span></a></li>
						<li><a href="#" class="p-2"><span class="fa fa-linkedin"></span></a></li>
						<li><a href="#" class="p-2"><span class="fa fa-instagram"></span></a></li>
						</ul>
					</div>
				</div>
			</div>
		</footer>
		<!-- end footer -->
		<!-- start loader -->
		<div id="loader" class="show fullscreen">
			<svg class="circular" width="48px" height="48px">
				<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
				<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#023a73"/>
			</svg>
		</div>
		 <!-- end loader -->
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/jquery/jquery-3.4.1.min.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/popper.min.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/owl.carousel.min.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/jquery/jquery.waypoints.min.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery.timepicker.min.js"></script>
		<script type="text/javascript">
			var siteUrl = '<?php echo base_url(); ?>';
		</script>		
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/main.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/app-ok.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/project.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/frontend/all_cond.js"></script>
	</body>
</html>