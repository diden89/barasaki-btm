<?php
/*!
 * @package Iwebebs
 * @copyright PT Iwebe Bangun Solusi
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /iwebebs/application/module_admin/home/views/home_view.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');
?>
<section class="home">
	<p>Selamat datang, <b><?php echo $this->session->userdata('fullname'); ?></b>!</p>
	
	<div class="row">
		<div class="col-md-3 col-sm-6 col-xs-12">
			<!-- small box -->
          	<div class="small-box bg-aqua">
           	 <div class="inner">
              <h3><?php echo $total_product;?></h3>

              <p>Total Product</p>
            	</div>
	            <div class="icon">
	              <i class="ion ion-cube"></i>
	            </div>
           	 <a href="<?php echo base_url('products');?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          	</div>
		</div>
		<div class="col-md-3 col-sm-6 col-xs-12">
			<!-- small box -->
          	<div class="small-box bg-red">
           	 <div class="inner">
              <h3><?php echo $total_project;?></h3>

              <p>Total Project</p>
            	</div>
	            <div class="icon">
	              <i class="ion ion-clipboard"></i>
	            </div>
           	 <a href="<?php echo base_url('projects');?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          	</div>
		</div>
		<div class="col-md-3 col-sm-6 col-xs-12">
			<!-- small box -->
          	<div class="small-box bg-green">
           	 <div class="inner">
              <h3><?php echo $total_team;?></h3>

              <p>Total Team</p>
            	</div>
	            <div class="icon">
	              <i class="ion ion-person-stalker"></i>
	            </div>
           	 <a href="<?php echo base_url('employee');?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          	</div>
		</div>
		<div class="col-md-3 col-sm-6 col-xs-12">
			<!-- small box -->
          	<div class="small-box bg-yellow">
           	 <div class="inner">
              <h3><?php echo $total_services;?></h3>

              <p>Total Services Available</p>
            	</div>
	            <div class="icon">
	              <i class="ion ion-gear-a"></i>
	            </div>
           	 <a href="<?php echo base_url('services');?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          	</div>
		</div>
	</div>

    <section class="col-lg-5 connectedSortable ui-sortable">
         
        
          <!-- quick email widget -->
          <div class="box box-info">
            <div class="box-header ui-sortable-handle" style="cursor: move;">
              <i class="fa fa-envelope"></i>

              <h3 class="box-title">Quick Email</h3>
              <!-- tools box -->
              <div class="pull-right box-tools">
                <button type="button" class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="" data-original-title="Remove">
                  <i class="fa fa-times"></i></button>
              </div>
              <!-- /. tools -->
            </div>
            <div class="box-body">
              <form action="./home/send_email" method="post">
                <div class="form-group">
                  <input class="form-control" name="emailto" placeholder="Email to:" type="email">
                </div>
                <div class="form-group">
                  <input class="form-control" name="subject" placeholder="Subject" type="text">
                </div>
                <div class="form-group">
                  <label for="txtContent">Content:</label>
                  <textarea id="txtContent" name="txt_content" class="textarea" placeholder="Enter content" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                </div>
            <div class="box-footer clearfix">
              <button type="submit" class="pull-right btn btn-default" id="sendEmail">Send
                <i class="fa fa-arrow-circle-right"></i></button>
            </div>
          </form>
          </div>

        </section>     
    <section class="col-lg-7 connectedSortable ui-sortable">
        
          <!-- Calendar -->
         <div class="box box-primary">
            <div class="box-body no-padding">
              <!-- THE CALENDAR -->
              <div id="calendar"></div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

        </section>
</section>
