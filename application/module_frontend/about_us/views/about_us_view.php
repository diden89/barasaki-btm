<?php defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package Iwebebs
 * @copyright PT Iwebe Bangun Solusi
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /D/xampp/htdocs/iwebebs/application/module_frontend/services/views/services_view.php
 */
?>

<section class="home-slider  inner-page owl-carousel">
	
		<?php foreach($slider as $sl){?>
			<div class="slider-item" style="background-image: url('<?php echo base_url($sl['img']);?>');">

				<div class="container">
					<div class="row slider-text align-items-center justify-content-center text-center">
						<div class="col-md-7 col-sm-12 element-animate">
							<h1><?php echo $sl['caption'];?></h1>
							<p><?php echo $sl['description'];?></p>
							
						</div>
					</div>
				</div>

			</div>
		<?php }?>

</section>
<!-- END slider -->
<section class="container cta-overlap">
	<div class="text d-flex">
		<h2 class="h3"><?php echo strtoupper($sl['caption']);?></h2>
		<div class="ml-auto btn-wrap">
			<a href="<?php echo base_url($sl['url']);?>" class="btn-cta btn btn-outline-white">Ibees</a>
		</div>
	</div>
</section>
<section class="section">
  <div class="container">
  	
    <div class="row mb-5">
    	<div>
    		<?php foreach ($about_us as $au): ?>
    			<h2 class="text-uppercase"><?php echo $au['title'];?></h2>
    			<p class="mb-3"><?php echo $au['content'];?></p>
    		<?php endforeach; ?>
     	</div>
     <!-- 
	      <div class="col-md-5 order-lg-1">
	        <h2 class="text-uppercase heading mb-5">About Us</h2>
	       	<p class="mb-3">asdasdasdasdasdasdasd</p>
	      </div> -->
    
    </div>
  </div>
</section>