<?php defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package Koperasi Bintang tanjuang Madani
 * @copyright Koperasi Bintang tanjuang Madani
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /D/xampp/htdocs/iwebebs/application/module_frontend/services/views/services_view.php
 */
?>

<section class="home-slider  inner-page owl-carousel">
	<div class="slider-item" style="background-image: url('<?php echo base_url($slider->img);?>');">

			<div class="container">
				<div class="row slider-text align-items-center justify-content-center text-center">
					<div class="col-md-7 col-sm-12 element-animate">
					<h1 class="sld"><?php echo $slider->caption; ?></h1>
					<p class="sld"><?php echo $slider->description; ?></p>
						
					</div>
				</div>
			</div>

		</div>

</section>
<section class="container cta-overlap">
  <div class="text d-flex">
    <h2 class="h3"><?php echo strtoupper($slider->caption);?></h2>
    <div class="ml-auto btn-wrap">
      <a href="<?php echo base_url($slider->url);?>" class="btn-cta btn btn-outline-white">Ibees</a>
    </div>
  </div>
</section>
<section class="section">
  <div class="container">
    <div class="row justify-content-center mb-5 element-animate">
      <div class="col-md-8 text-center">
        <h2 class="text-uppercase heading border-bottom mb-4">Certificate, Legals & Financial Strength</h2>
        <p class="mb-3 lead"><?php echo ucwords('Legalitas Yang sudah di miliki oleh PT. Iwebe Bangun Solusi adalah bentuk komitmen perusahaan dalam memberikan layanan yang terbaik');?></p>
      </div>
    </div>
    <div class="row mb-5">
    <?php foreach ($company_legal as $c => $l) { ?>
      <div class="col-lg-4 col-md-6 col-12 mb-3 element-animate">
        <div class="media d-block media-feature text-center">
          
          <img src="<?php echo base_url($l->img); ?>" width="100px"><p>
          <div class="media-body">
            <h3 class="mt-0 text-black"><?php echo $l->caption; ?></h3>
            <p><?php echo strip_tags($l->description); ?></p>
            <p><a href="<?php echo base_url('certificate_legal/detail/').$l->id; ?>" class="btn btn-outline-primary btn-sm">Show More</a></p>
          </div>
         </div>
      </div>
    <?php } ?>
    </div>
    <!-- END row -->
    
</section>