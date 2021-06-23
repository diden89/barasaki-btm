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

<section class="hero-wrap hero-wrap-2" style="background-image: url('<?php echo base_url($slider->img);?>');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <h1 class="mb-2 bread"></h1>
            
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
<section class="ftco-services ftco-no-pt">
    <div class="container">
        <div class="row justify-content-center mb-5 pb-2">
            <div class="col-md-8 text-center heading-section ftco-animate">
                <span class="subheading">Layanan kami</span>
                <h2 class="mb-4"><?php echo $slider->caption;?></h2>
                <p><?php echo $slider->description;?></p>
            </div>
        </div>
        <div class="row">
            <?php foreach ($services as $k => $v) { ?>
            <div class="col-md-4 d-flex services align-self-stretch p-4 ftco-animate align-items-center">
                <div class="media block-6 d-block text-center">
                    <div class="icon d-flex justify-content-center align-items-center">
                        <span class="flaticon-hook"></span>
                    </div>
                    <div class="media-body p-2 mt-4">
                        <h3 class="heading"><?php echo $v->caption; ?></h3>
                        <p><?php echo $v->short_description; ?></p>
                    </div>
                </div>      
            </div>
            <?php } ?>
        </div>
    </div>
</section>