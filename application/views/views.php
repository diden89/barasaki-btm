<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<base href="<?php echo base_url(); ?>" />
		<link rel="shortcut icon" href="<?php echo base_url($company->favicon); ?>">
		<title><?php echo $title; ?></title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="Baraski Sinergi Semesta General Supplier and trading">
	    <meta name="keywords" content="Barasaki,batam,Baraski Sinergi Semesta,coporate,General Supplier and trading">
	    <meta name="author" content="RDIT-LABS.COM">
		<!-- Theme Barasaki -->
		<link href="<?php echo base_url(); ?>assets/templates/barasaki/css/bootstrap.css" rel="stylesheet">
	    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	    <link href="<?php echo base_url(); ?>assets/templates/barasaki/css/responsiveslides.css" rel="stylesheet">
	    <link href="<?php echo base_url(); ?>assets/templates/barasaki/css/style.css" rel="stylesheet">
	    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

	    <?php
		
        if (isset($source_top) && is_array($source_top) && count($source_top) > 0)
        {
            echo implode("\n\t", $source_top)."\n";
        }
        ?>

	</head>
	<body>
		<div class="wrapper">
			<div class="container">
				<nav class="navbar navbar-default">
					<div class="container-fluid"> 
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
							<a class="navbar-brand" href="<?php echo base_url(); ?>home">
							<img src="<?php echo base_url($company->logo); ?>" alt="Home"/>
						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse pull-right" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<nav id="primary_nav_wrap">
									<ul>
										<?php echo $menu; ?>
										
									</ul>
								</nav>
							</ul>
						</div>
						<!-- /.navbar-collapse --> 
					</div>
					<!-- /.container-fluid --> 
				</nav>
			</div>
		</div>

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

		<div class="footer">
			<div class="container">
				<div class="col-sm-4">
					<h5>Site Map</h5>
					<ul>
					<li><a href="<?php echo base_url(); ?>">Home</a></li>
					<li><a href="<?php echo base_url(); ?>home/aboutus">About Us</a></li>
					<li><a href="<?php echo base_url(); ?>home/services">Product</a></li>
					<li><a href="<?php echo base_url(); ?>home/contact">Contact Us</a></li>
					<li><a href="<?php echo base_url(); ?>home/companyprofile">Company Profile</a></li>
					</ul>
				</div>
				<div class="col-sm-4 col-md-4 twitter">
					<h5>Facebook Page</h5>
					<div class="fb-page" data-href="https://www.facebook.com/Barasaki-1491198281177819" data-tabs="timeline" data-width="250" data-height="298" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/Barasaki-1491198281177819" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/Barasaki-1491198281177819">Barasaki</a></blockquote></div>
				</div>
					<div class="col-md-4 testimonial">
					<!-- 
					<h5>Testimonial</h5>
					<ul>
					<li><i class="fa  fa-quote-left"></i>Lorem ipsum dolor sit amet,  adipiscing elit, sed 
					diam  nibh euismod tincidunt ut laoreet dolore magna erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.  </li>

					</ul>
					<div class="t-image">
					<img src="<?php //echo base_url(); ?>assets/img/testimonial.png">
					<h6>- Michael R. Hanke</h6><br>
					<p>ceo of sun</p>
					</div>-->
				</div> 
				<div class="col-md-3 contact-footer">
					<div class="footer-form">
						<h5>Contact Us</h5>
						<input type="text" placeholder="Name">
						<input type="text" placeholder="E-Mail">
						<textarea placeholder="Message" rows="3"></textarea>
						<button class="submit-bt">Send</button>
					</div>
				</div>
			</div>
		</div>

		<div id="fb-root"></div>
		<script>(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id)) return;
		js = d.createElement(s); js.id = id;
		js.src = "//connect.facebook.net/id_ID/sdk.js#xfbml=1&version=v2.8&appId=629564650514694";
		fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));</script>

		<div class="copyright">
			<div class="container">
				<p>All Rights Reserved 2017 &copy; barasaki-btm.com</p>
			</div>
		</div>
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
		<script src="<?php echo base_url(); ?>assets/templates/barasaki/js/jquery.min.js"></script> 
		<!-- Include all compiled plugins (below), or include individual files as needed --> 
		<script src="<?php echo base_url(); ?>assets/templates/barasaki/js/bootstrap.js"></script> 
		<script src="<?php echo base_url(); ?>assets/templates/barasaki/js/responsiveslides.min.js"></script> 
		<script src="<?php echo base_url(); ?>assets/templates/barasaki/js/response.min.js"></script> 
		<script>
		$(function() {
		$(".rslides").responsiveSlides();
		});
		</script>
		<?php
		if (isset($source_bot) && is_array($source_bot) && count($source_bot) > 0)
		{
		echo implode("\n\t", $source_bot)."\n";
		}
		?>
	</body>
</html>


		