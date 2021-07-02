<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<base href="<?php echo base_url(); ?>" />
		<link rel="shortcut icon" href="<?php echo base_url($company->favicon); ?>">
		<title><?php echo $title; ?></title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="<?php echo $meta_desc; ?>">
	    <meta name="keywords" content="<?php echo $meta_key; ?>">
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
		
		<!-- start Content -->
		<?php print $body."\n"; ?>
		<!-- end Content -->

		<div class="footer">
			<div class="container">
				<div class="col-sm-3">
					<h5>BARASAKI SINERGI SEMESTA</h5>
					<ul>
						<li><a><?php echo $company->address; ?></a></li>
						<?php 
							foreach($footer as $c=>$k){
								foreach($k->contact as $ct=>$kt){
									if($kt['c_type'] == 'p')
									{
										echo "<li><a>".$kt['c_detail']."</a></li>";
									}
								}
							}
							
						?>
					</ul>
				</div>
				<div class="col-sm-3">
					<h5>Site Map</h5>
					<ul>
						<?php foreach($site_map as $s=>$m){
							$url = ($m->caption_url == '_blank') ? $m->url : base_url($m->url);
							?>
							<li><a href="<?php echo $url; ?>" target="<?php echo $m->caption_url;?>"><?php echo $m->caption;?></a></li>
						<?php }?>
					</ul>
				</div>
				<div class="col-sm-3 col-md-3 twitter">
					<h5>Facebook Page</h5>
					<div class="fb-page" data-href="https://www.facebook.com/Barasaki-1491198281177819" data-tabs="timeline" data-width="250" data-height="298" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/Barasaki-1491198281177819" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/Barasaki-1491198281177819">Barasaki</a></blockquote></div>
				</div>
					<div class="col-sm-3 testimonial">
					 
					<h5>Testimonial</h5>
					<ul>
					<li><i class="fa  fa-quote-left"></i>Lorem ipsum dolor sit amet,  adipiscing elit, sed 
					diam  nibh euismod tincidunt ut laoreet dolore magna erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.  </li>

					</ul>
					<div class="t-image">
					<img src="<?php //echo base_url(); ?>assets/img/testimonial.png">
					<h6>- Michael R. Hanke</h6><br>
					<p>ceo of sun</p>
					</div>
				</div> 
				<!-- <div class="col-md-2 contact-footer">
					<div class="footer-form">
						<h5>Contact Us</h5>
						<input type="text" placeholder="Name">
						<input type="text" placeholder="E-Mail">
						<textarea placeholder="Message" rows="3"></textarea>
						<button class="submit-bt">Send</button>
					</div>
				</div> -->
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
				<p>All Rights Reserved 2021 &copy; barasaki-btm.com</p>
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
		<script type="text/javascript">
			var siteUrl = '<?php echo base_url(); ?>';
			var frontUrl = '<?php echo front_url(); ?>';

		</script>
		<?php
		if (isset($source_bot) && is_array($source_bot) && count($source_bot) > 0)
		{
		echo implode("\n\t", $source_bot)."\n";
		}
		?>
	</body>
</html>


		