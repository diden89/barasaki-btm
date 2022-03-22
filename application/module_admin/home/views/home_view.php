<?php
/*!
 * @package Koperasi Bintang tanjuang Madani
 * @copyright Koperasi Bintang tanjuang Madani
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /bintangtanjuangmadani/application/module_admin/home/views/home_view.php
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

    <section class="col-lg-6 connectedSortable ui-sortable">
         
        
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
    <section class="col-lg-6 connectedSortable ui-sortable">

          <!-- Calendar -->
          <div class="box box-solid bg-green-gradient">
            <div class="box-header">
              <i class="fa fa-calendar"></i>

              <h3 class="box-title">Calendar</h3>
              <!-- tools box -->
              <div class="pull-right box-tools">
                <!-- button with a dropdown -->
                <div class="btn-group">
                  <button type="button" class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-bars"></i></button>
                  <ul class="dropdown-menu pull-right" role="menu">
                    <li><a href="#">Add new event</a></li>
                    <li><a href="#">Clear events</a></li>
                    <li class="divider"></li>
                    <li><a href="#">View calendar</a></li>
                  </ul>
                </div>
                <button type="button" class="btn btn-success btn-sm" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-success btn-sm" data-widget="remove"><i class="fa fa-times"></i>
                </button>
              </div>
              <!-- /. tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
              <!--The calendar -->
              <div id="calendar" style="width: 100%"></div>
            </div>
            <!-- /.box-body -->
            <div class="box-footer text-black">
              <div class="row">
                <div class="col-sm-6">
                  <!-- Progress bars -->
                  <div class="clearfix">
                    <span class="pull-left">Task #1</span>
                    <small class="pull-right">90%</small>
                  </div>
                  <div class="progress xs">
                    <div class="progress-bar progress-bar-green" style="width: 90%;"></div>
                  </div>

                  <div class="clearfix">
                    <span class="pull-left">Task #2</span>
                    <small class="pull-right">70%</small>
                  </div>
                  <div class="progress xs">
                    <div class="progress-bar progress-bar-green" style="width: 70%;"></div>
                  </div>
                </div>
                <!-- /.col -->
                <div class="col-sm-6">
                  <div class="clearfix">
                    <span class="pull-left">Task #3</span>
                    <small class="pull-right">60%</small>
                  </div>
                  <div class="progress xs">
                    <div class="progress-bar progress-bar-green" style="width: 60%;"></div>
                  </div>

                  <div class="clearfix">
                    <span class="pull-left">Task #4</span>
                    <small class="pull-right">40%</small>
                  </div>
                  <div class="progress xs">
                    <div class="progress-bar progress-bar-green" style="width: 40%;"></div>
                  </div>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
          </div>
          <!-- /.box -->

    </section>
</section>
