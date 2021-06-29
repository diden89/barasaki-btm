<?php defined('BASEPATH') OR exit('No direct script access allowed');
/*!
  * @package PT. Barasaki Sinergi Semesta
  * @copyright PT. Barasaki Sinergi Semesta
  * @author Algaza
  * @version 1.0
  * @access Public
  * @path /barasaki-btm/application/module_frontend/Company_profile/views/Company_profile_view.php
  */
  ?>
  <?php
  //print_r($contact);exit; 
  ?>
<style>
    #owl{
        max-width: 1388px;
        margin:0 auto;
    }
    #owl .item{
        width:254px;/*348*/
        height:424px;
        margin:0 47px;
    }
    #owl .owl-prev{
        position: absolute;
        left:-58px!important;
        top:50%;
        transform: translateY(-50%);
        background-image:url(images/left-arrow5df2.png?d=2019100802);
        background-repeat: no-repeat;
        background-size: 51px 51px;
        width:51px;
        height:51px;
    }
    #owl .owl-next{
        position: absolute;
        right:-58px!important;
        top:50%;
        transform: translateY(-50%);
        background-image:url(images/right-arrow5df2.jpg?d=2019100802);
        background-size: 51px 51px;
        width:51px;
        height:51px;
    }
</style>
<div class="inner-page about-us">
	<div class="grey-bg">
		<div class="container">
			<div class="header-intro">
                <?php foreach($company_profile as $cp=>$c){?>
				    <embed type="pdf/html" id="src_file" src="<?php echo base_url($c->file);?>#toolbar=0" width="800" height="600"></embed>
                <?php }?>
                <div style="margin-bottom:5px"> </div>
			</div>
		</div>
	</div>
</div>
			
<!-- <section class="Certifications">
    <h3 class="wehave">Company Profile</h3>
    <div id="owl" class="owl-carousel">
        <?php //if( ! empty($company_profile)){
           // foreach($company_profile as $cp => $c){
            ?>
                
                    <div class="item">
                        <a class="show-data" style="cursor: pointer;">
                        <img src="<?php //echo base_url($c->img);?>">
                        <input type="hidden" class="url_file" value="<?php// echo base_url($c->file);?>">
                        </a>   
                    </div>
                
        <?php
         //   } 
        //}?>
    </div>              
</section> -->