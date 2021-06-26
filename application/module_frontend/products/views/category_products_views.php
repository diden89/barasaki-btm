<?php defined('BASEPATH') OR exit('No direct script access allowed');
/*!
  * @package PT. Barasaki Sinergi Semesta
  * @copyright PT. Barasaki Sinergi Semesta
  * @author Algaza
  * @version 1.0
  * @access Public
  * @path /barasaki-btm/application/module_frontend/project/views/project_view.php
  */
  ?>
<div class="container">
    <div class="our-works">
        <div class="header-intro">
            <h2>Heaters and Thermocouples</h2>
            <p>Below our list product.</p>
        </div>
        <?php  
        // print_r($products);exit;
        foreach ($products as $p => $r) { ?>
            <div class="col-sm-4">
                <div class="portfolio-img-wrap">
                  <img src="<?php echo base_url($r->img); ?>">
                  <div class="caption-container">
                   <div class="portfolio-caption">
                    
                       <h5><?php echo $r->products_name; ?></h5>
                       <p><?php echo substr(strip_tags($r->products_short_description), 200); ?></p>
                   </div>
                </div>
               </div>
           </div>
        <?php  } ?>
   
<div class="clearfix"></div>

</div>
</div>
<!-- works end -->
