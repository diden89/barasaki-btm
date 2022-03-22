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

<div class="inner-page about-us">
    <div class="container">
            <?php foreach ($pages as $au): ?>
                <?php echo $au['content'];?>
            <?php endforeach; ?>
        
        <div class="grey-bg">
                <div class="container">
                    <div class="header-intro">
                        <h2>our happy customers</h2>
                        <p>Below list of few of our customers.</p>

                    </div>
                    <div class="our-team">
                        <div class="col-md-12">
                        <?php foreach($customer as $c=>$k){?>
                            <div class="col-md-2">
                                <img src="<?php echo base_url($k->img);?>">
                            </div>
                        <?php }?>
                        </div>
                        <div class="col-md-12">
                            <div class="header-intro">
                                <h2>Our Teams</h2>
                                <p>Solid team in my company</p>

                            </div>
                            <?php foreach($team as $t=>$c){?>
                            <div class="col-sm-3">
                                <div class="team-member"><img src="<?php echo base_url($c->img); ?>" alt="" style="width:250px;height:250px;">
                                    <div class="team-name"><h5><?php echo $c->fullname; ?></h5><p>- <?php echo $c->caption; ?></p>

                                    </div>
                                    <div class="team-social"><a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-linkedin"></i></a></div>    
                                </div>
                            </div>
                            <?php }?>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
    </div>
</div>