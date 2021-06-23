<?php defined('BASEPATH') OR exit('No direct script access allowed');
/*!
  * @package Iwebebs
  * @copyright PT Iwebe Bangun Solusi
  * @author Algaza
  * @version 1.0
  * @access Public
  * @path /iwebebs/application/module_frontend/project/views/project_view.php
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
<!-- END slider -->

<section class="ftco-section">
	<div class="container">
		<div class="row">
			
			<div class="col-lg-4 sidebar ftco-animate">
			<div class="sidebar-box">
			<form id="searchnews" class="search-form">
			<div class="form-group">
			<span class="icon icon-search"></span>
			<input type="text" class="form-control" placeholder="Type a keyword and hit enter">
			</div>
			</form>
			</div>
			<div class="sidebar-box ftco-animate">
			<h3>Category</h3>
			<ul class="categories">
			<?php foreach($category as $ct => $c){?>
			<li><a href="<?php echo base_url('products/category/').$c->id;?>"><?php echo $c->category_name;?><span>(<?php echo $c->total;?>)</span></a></li>
			<?php }?>
			</ul>
			</div>
			</div>
			<div class="col-lg-8 ftco-animate">
				<div class="row">
					<?php  foreach ($products as $p => $r) { ?>
					<div class="col-md-4 ftco-animate">
						<div class="blog-entry">
						<a href="<?php echo base_url();?>products/detail_products/<?php echo $r->prd_id;?>" class="block-20" style="background-image: url(<?php echo base_url($r->img); ?>);">
						<!-- <div class="meta-date text-center p-2">
						<span class="day"><?php //echo date('d',strtotime($r->date)); ?></span>
						<span class="mos"><?php// echo date('F',strtotime($r->date)); ?></span>
						<span class="yr"><?php //echo date('Y',strtotime($r->date)); ?></span>
						</div> -->
						</a>
						<div class="text pt-4">
						<h8><a style="color: black;" href="<?php echo base_url();?>products/detail_products/<?php echo $r->prd_id;?>"><?php echo $r->products_name; ?></a></h8>
						<p><?php 
                            if(! empty($r->products_price) && $r->products_price != 0)
                            {
                                echo 'Price : Rp. '.number_format($r->products_price); 

                            }
                            else
                            {
                                echo 'Call Us';
                            }
                            ?></p>
						</div>
						</div>
					</div>
					<?php } ?>
				</div>
			
			</div> <!-- .col-md-8 -->
		</div>
	</div>
</section>