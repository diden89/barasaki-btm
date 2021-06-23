<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<base href="<?php echo base_url(); ?>" />
		<link rel="shortcut icon" href="<?php echo base_url(); ?>assets/images/favicon.ico">
		<title><?php echo $title; ?></title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Theme Bee -->
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
	    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700,800,900" rel="stylesheet">

	    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/templates/bee/css/open-iconic-bootstrap.min.css">
	    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/templates/bee/css/animate.css">
	    
	    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/templates/bee/css/owl.carousel.min.css">
	    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/templates/bee/css/owl.theme.default.min.css">
	    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/templates/bee/css/magnific-popup.css">

	    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/templates/bee/css/aos.css">

	    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/templates/bee/css/ionicons.min.css">

	    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/templates/bee/css/bootstrap-datepicker.css">
	    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/templates/bee/css/jquery.timepicker.css">

	    
	    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/templates/bee/css/flaticon.css">
	    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/templates/bee/css/icomoon.css">
	    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/templates/bee/css/style.css">
	    <?php
		
        if (isset($source_top) && is_array($source_top) && count($source_top) > 0)
        {
            echo implode("\n\t", $source_top)."\n";
        }
        ?>

	</head>
	<body>
		<div class="bg-top navbar-light">
			<div class="container">
				<div class="row no-gutters d-flex align-items-center align-items-stretch">
					<div class="col-md-3 d-flex align-items-center py-3">
						<a class="navbar-brand" href="index.html"><img src="<?php echo base_url(); ?>assets/images/compro/logo.png" width="100px" height="50px"/></a>
					</div>
					<div class="col-lg-9 d-block">
						<div class="row d-flex">
							<div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
								<div class="icon d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
								<div class="text d-flex align-items-center">
									<span>iwebebs@gmail.com
									info.iwebe@yahoo.com</span>
								</div>
								
							</div>
							<div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
								<div class="icon d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
								<div class="text d-flex align-items-center">
								<span>Call : +(021)226 76 044</span>
								</div>
							</div>
							<div class="col-md topper d-flex align-items-center align-items-stretch">
								<p class="mb-0 d-flex d-block">
								<a href="#" class="btn btn-primary d-flex align-items-center justify-content-center">
									<span>Permintaan Penawaran</span>
								</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- start header -->
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
		    <div class="container d-flex align-items-center">
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
		        <span class="oi oi-menu"></span> Menu
		      </button>
		      <!-- <form action="#" class="searchform order-lg-last">
	          <div class="form-group d-flex">
	            <input type="text" class="form-control pl-3" placeholder="Search">
	            <button type="submit" placeholder="" class="form-control search"><span class="ion-ios-search"></span></button>
	          </div>
	        </form> -->
		      <div class="collapse navbar-collapse" id="ftco-nav">
		        <ul class="navbar-nav mr-auto">
		        	<!-- <li class="nav-item active"><a href="index.html" class="nav-link pl-0">Home</a></li>
		        	<li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
		        	<li class="nav-item"><a href="project.html" class="nav-link">Project</a></li>
		        	<li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
		          	<li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li> -->
		          	<?php echo $menu; ?>
		        </ul>
		      </div>
		    </div>
	  	</nav>
		<!-- end header -->
		<!-- start Content -->
		<?php print $body."\n"; ?>
		<!-- end Content -->
		<!-- start footer -->
		<footer class="ftco-footer ftco-bg-dark ftco-section">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md">
					<div class="ftco-footer-widget mb-5">
						<h2 class="ftco-heading-2 logo">Ibees</h2>
						<p>Membangun Bisnis dan Aset Produktif secara terintegrasi guna memberikan Manfaat & Memberikan layanan jasa pemeliharaan yang profesional, handal dan berorientasi pada karakter pelanggan.</p>
						<ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
							<li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
							<li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
							<li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
						</ul>
					</div>

				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-5 ml-md-4">
						<h2 class="ftco-heading-2">Layanan</h2>
						<ul class="list-unstyled">
							<?php foreach($services_footer as $v=>$sv) {?>
								<li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span><?php echo $sv->caption ; ?></a></li>
							<?php }?>
							<!-- <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Renovation</a></li>
							<li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Painting</a></li>
							<li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Interior Design</a></li>
							<li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Exterior Design</a></li> -->
						</ul>
					</div>
				</div>
				<div class="col-md-5">
					<div class="ftco-footer-widget mb-5">
						<h2 class="ftco-heading-2">Berita terbaru</h2>
						<?php foreach($news as $nw => $n){ ?>
						<div class="block-21 mb-4 d-flex">
							<a class="blog-img mr-4" style="background-image: url('<?php echo base_url($n->image);?>');"></a>
							<div class="text">
								<h3 class="heading"><a href="#"><?php echo $n->title;?></a></h3>
								<div class="meta">
									<div><a href="#"><span class="icon-calendar"></span> <?php echo date('M',strtotime($n->date)); ?>. <?php echo date('d',strtotime($n->date)); ?>, <?php echo date('Y',strtotime($n->date)); ?></a></div>
									<div><a href="#"><span class="icon-person"></span> <?php echo $n->author;?></a></div>
									<div><a href="#"><span class="icon-eye"></span> <?php echo $n->count_read;?></a></div>
								</div>
							</div>
						</div>
						<?php }?>
					  <!-- Histats.com  (div with counter) --><div id="histats_counter"></div>
                        <!-- Histats.com  START  (aync)-->
                        <script type="text/javascript">var _Hasync= _Hasync|| [];
                        _Hasync.push(['Histats.start', '1,4438743,4,7,200,30,00010000']);
                        _Hasync.push(['Histats.fasi', '1']);
                        _Hasync.push(['Histats.track_hits', '']);
                        (function() {
                        var hs = document.createElement('script'); hs.type = 'text/javascript'; hs.async = true;
                        hs.src = ('//s10.histats.com/js15_as.js');
                        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(hs);
                        })();</script>
                        <noscript><a href="/" target="_blank"><img  src="//sstatic1.histats.com/0.gif?4438743&101" alt="" border="0"></a></noscript>
                        <!-- Histats.com  END  -->
					</div>
				</div>
				<!-- <div class="col-md">
					<div class="ftco-footer-widget mb-5">
						<h2 class="ftco-heading-2">Newsletter</h2>
						<form action="#" class="subscribe-form">
							<div class="form-group">
								<input type="text" class="form-control mb-2 text-center" placeholder="Enter email address">
								<input type="submit" value="Subscribe" class="form-control submit px-3">
							</div>
						</form>
					</div>
				</div> -->
			</div>
		<div class="row">
		    
		  <div class="col-md-12 text-center">

		    <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
		Copyright &copy;<script>document.write(new Date().getFullYear());</script> | Design by <a href="https://colorlib.com" target="_blank">Colorlib</a> | Edited by : algazasolution
		<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
		  </div>
		</div>
		</div>
		</footer>
		<!-- end footer -->
		<!-- start loader -->
		<div id="ftco-loader" class="show fullscreen">
			<svg class="circular" width="48px" height="48px">
				<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
				<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/>
			</svg>
		</div>
		 <!-- end loader -->

		<script type="text/javascript">
			var siteUrl = '<?php echo base_url(); ?>';
			
		</script>		
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/main.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/app-ok.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/project.js"></script>
		<!-- <script type="text/javascript" src="<?php //echo base_url(); ?>assets/js/frontend/all_cond.js"></script> -->

		<!-- End Theme Bee -->
		<script src="<?php echo base_url(); ?>assets/templates/bee/js/jquery.min.js"></script>
		<script src="<?php echo base_url(); ?>assets/templates/bee/js/jquery-migrate-3.0.1.min.js"></script>
		<script src="<?php echo base_url(); ?>assets/templates/bee/js/popper.min.js"></script>
		<script src="<?php echo base_url(); ?>assets/templates/bee/js/bootstrap.min.js"></script>
		<script src="<?php echo base_url(); ?>assets/templates/bee/js/jquery.easing.1.3.js"></script>
		<script src="<?php echo base_url(); ?>assets/templates/bee/js/jquery.waypoints.min.js"></script>
		<script src="<?php echo base_url(); ?>assets/templates/bee/js/jquery.stellar.min.js"></script>
		<script src="<?php echo base_url(); ?>assets/templates/bee/js/owl.carousel.min.js"></script>
		<script src="<?php echo base_url(); ?>assets/templates/bee/js/jquery.magnific-popup.min.js"></script>
		<script src="<?php echo base_url(); ?>assets/templates/bee/js/aos.js"></script>
		<script src="<?php echo base_url(); ?>assets/templates/bee/js/jquery.animateNumber.min.js"></script>
		<script src="<?php echo base_url(); ?>assets/templates/bee/js/bootstrap-datepicker.js"></script>
		<script src="<?php echo base_url(); ?>assets/templates/bee/js/jquery.timepicker.min.js"></script>
		<script src="<?php echo base_url(); ?>assets/templates/bee/js/scrollax.min.js"></script>
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
		<script src="<?php echo base_url(); ?>assets/templates/bee/js/google-map.js"></script>
		<script src="<?php echo base_url(); ?>assets/templates/bee/js/main.js"></script>
		<?php
        if (isset($source_bot) && is_array($source_bot) && count($source_bot) > 0)
        {
            echo implode("\n\t", $source_bot)."\n";
        }
        ?>
      </body>
</html>