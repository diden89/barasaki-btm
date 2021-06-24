<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<div class="slider">
	<div class="rslides_container">
		<ul class="rslides">
			<?php foreach ($slide as $k => $v) { ?>
				<li> <img src="<?php echo base_url($v->img); ?>" data-min-width-1400="<?php echo $v->img; ?>" alt="">
					<div class="container">
						<div class="caption">
							<h1><?php echo $v->title; ?></h1>
							<h1><span><?php echo ucwords($v->description); ?></span></h1>
						</div>
					</div>
				</li>
			<?php } ?>	
		</ul>
	</div>
</div>
<!-- slider end -->

<!--Promo -->
<div class="promo">
	<div class="container">
       <p>
       <span>We providing</span> satisfaction and expectation timely manner</p>
       <a href="<?php echo base_url('contact'); ?>" class="line-btn">Contact Us</a>
   </div>
</div>
<!-- promo end --> 
<div class="promox">
	<div class="container">
		<span>Sole Distributor</span>
		<br>
		<a  href="http://ae-mic.com/en/" target="__blank">
			<img src="<?php echo base_url(); ?>assets/images/img/aemiclogo.jpg"/>
      	</a>
   </div>
</div> 
<!-- services start -->
<div class="container">
	<div class="our-services">
       <!-- <div class="header-intro">
        <h2>Currently Partner</h2>
        </div> -->
        <div class="col-md-12">
            <img src="<?php echo base_url(); ?>assets/images/img/partner2.jpg">
        </div>
        
    </div>
</div>
<!-- services end -->