<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<div class="slider">
	<div class="rslides_container">
		<ul class="rslides">
			<?php foreach ($slide as $k => $v) { ?>
				<li> <a href="<?php echo $v->url;?>" target="__blank"><img src="<?php echo base_url($v->img); ?>" data-min-width-1400="<?php echo $v->img; ?>" alt="">
					<div class="container">
						<div class="caption">
							<h1><?php echo $v->title; ?></h1>
							<h1><span><?php echo ucwords($v->description); ?></span></h1>
						</div>
					</div></a>
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
		<?php foreach($distributor as $d=>$s){?>
			<a  href="<?php echo $s->url;?>" target="__blank">
				<img src="<?php echo base_url($s->img); ?>"/ style="width: 250px;height: 250px;">
	      	</a>
      	<?php } ?>
   </div>
</div> 
<!-- services start -->
<div class="container">
	<div class="our-services">
      	<h3>Customer Recently</h3>
		<br>
    	<div class="row" >
    		<?php foreach($customer as $c=>$k){?>
        		<div class="col-md-4" style="width: 200px;">
        			<a href="<?php echo $k->url;?>" target="__blank"><img src="<?php echo base_url($k->img); ?>"/></a>
        		</div>
    		<?php } ?>
    		
    	</div>
    </div>
</div>
<!-- services end -->