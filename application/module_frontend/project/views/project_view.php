<?php defined('BASEPATH') OR exit('No direct script access allowed');
/*!
  * @package Koperasi Bintang Tanjung Madani
  * @copyright Koperasi Bintang Tanjung Madani
  * @author Algaza
  * @version 1.0
  * @access Public
  * @path /bintangtanjungmadani/application/module_frontend/project/views/project_view.php
  */
  ?>

<section class="hero-wrap hero-wrap-2" style="background-image: url('<?php echo base_url($slider->img);?>');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <h1 class="mb-2 bread"><?php $slider->caption; ?></h1>
            
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section ftco-no-pt ftco-no-pb">
			<div class="container-fluid p-0">
    		<div class="row no-gutters">
    			<?php foreach($project as $pr => $p){?>
    			<div class="col-md-6 col-lg-3 ftco-animate">
    				<div class="project">
	    				<img src="<?php echo base_url($p->img);?>" class="img-fluid" alt="Colorlib Template">
	    				<div class="text">
	    					<span><?php echo $p->location;?></span>
	    					<h3><a href=""><?php echo $p->project_name;?></a></h3>
	    				</div>
	    				<a href="<?php echo base_url($p->img);?>" class="icon image-popup d-flex justify-content-center align-items-center">
	    					<span class="icon-expand"></span>
	    				</a>
    				</div>
    			</div>
    			<?php } ?>    			
    			
    		</div>
    	</div>
		</section>