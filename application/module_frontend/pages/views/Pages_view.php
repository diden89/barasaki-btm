<?php defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package Barasaki Semesta
 * @copyright Barasaki Semesta
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /D/xampp/htdocs/iwebebs/application/module_frontend/services/views/services_view.php
 */
?>




<section class="hero-wrap hero-wrap-2" style="background-image: url('<?php echo base_url($slider->img);?>');" data-stellar-background-ratio="0.5">
  <div class="overlay"></div>
  <div class="container">
    <div class="row no-gutters slider-text align-items-center justify-content-center">
      <div class="col-md-9 ftco-animate text-center">
        <h1 class="mb-2 bread"><?php echo $slider->caption;?></h1>
        <?php echo $slider->description;?>
       <!--  <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>About us <i class="ion-ios-arrow-forward"></i></span></p> -->
      </div>
    </div>
  </div>
</section>

    <section class="ftco-counter img" id="section-counter" style="background-image: url(images/bg_3.jpg);" data-stellar-background-ratio="0.5">
    	<div class="container">
				<div class="row">
          <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 d-flex">
              <div class="text d-flex align-items-center">
                <strong class="number" data-number="<?php echo $since_years; ?>">0</strong>
              </div>
              <div class="text-2">
                <span>Tahun <br>Pengalaman</span>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 d-flex">
              <div class="text d-flex align-items-center">
                <strong class="number" data-number="<?php echo $total_projects->total;?>">0</strong>
              </div>
              <div class="text-2">
                <span>Pekerjaan <br>Telah Diselesaikan</span>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 d-flex">
              <div class="text d-flex align-items-center">
                <strong class="number" data-number="<?php echo $total_team->total;?>">0</strong>
              </div>
              <div class="text-2">
                <span>Team <br>Berpengalaman</span>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 d-flex">
              <div class="text d-flex align-items-center">
                <strong class="number" data-number="<?php echo $total_projects->total;?>">0</strong>
              </div>
              <div class="text-2">
                <span>Pelanggan <br>Senang</span>
              </div>
            </div>
          </div>
        </div>
    	</div>
    </section>

    <section class="ftco-section">
			<div class="container">
				<?php foreach ($pages as $au): ?>
				<div class="row no-gutters">
					<div class="col-md-5 p-md-5 img img-2 mt-5 mt-md-0" style="background-image: url(<?php echo $au['img'];?>);">
					</div>
					<div class="col-md-7 wrap-about py-5 px-4 px-md-5 ftco-animate">
						<div class="heading-section mb-5">
							<h2 class="mb-4"><?php echo $au['title'];?></h2>
						</div>
						<div class="">
							<?php echo $au['content'];?>
						</div>
					</div>
				</div>
				<?php endforeach; ?>
			</div>
		</section>