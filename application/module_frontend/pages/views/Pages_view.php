<?php defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package PT. Barasaki Sinergi Semesta
 * @copyright PT. Barasaki Sinergi Semesta
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /D/xampp/htdocs/iwebebs/application/module_frontend/services/views/services_view.php
 */
?>

<div class="inner-page about-us">
    <div class="container">
        <div class="">
            <?php foreach ($pages as $au): ?>
                <div class="row no-gutters">                
                    <div class="col-md-12">
                        <div class="">
                            <?php echo $au['content'];?>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
        <div class="grey-bg">
                <div class="container">
                    <div class="header-intro">
                        <h2>our happy customers</h2>
                        <p>Below list of few of our customers.</p>

                    </div>
                    <div class="our-team">
              <div class="col-md-12">
                  <img src="<?php echo base_url();?>assets/images/img/barasakicustomer.png">
              </div>
                        <div class="col-sm-3">
                            <div class="team-member"><img src="<?php echo base_url(); ?>assets/images/img/team1.jpg" alt="">
                                <div class="team-name"><h5>Sharon Housley</h5><p>- ceo</p>

                                </div>
                                <div class="team-social"><a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-linkedin"></i></a></div>    
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="team-member"><img src="<?php echo base_url(); ?>assets/images/img/team2.jpg" alt="">
                                <div class="team-name"><h5>Sarah Walls</h5><p>- support head</p>

                                </div>
                                <div class="team-social"><a href="#"><i class="fa fa-facebook"></i><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-linkedin"></i></a></div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="team-member"><img src="<?php echo base_url(); ?>assets/images/img/team3.jpg" alt="">
                                <div class="team-name"><h5>Betty Covey</h5><p>- finace head</p>

                                </div>
                                <div class="team-social"><a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-linkedin"></i></a></div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="team-member"><img src="<?php echo base_url(); ?>assets/images/img/team4.jpg" alt="">
                                <div class="team-name"><h5>Ralph Buchanan</h5><p>- marketing head</p>

                                </div>
                                <div class="team-social"><a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-linkedin"></i></a></div>
                            </div>
                        </div> 
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
    </div>
</div>