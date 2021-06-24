<?php defined('BASEPATH') OR exit('No direct script access allowed');
/*!
  * @package Barasaki Semesta
  * @copyright Barasaki Semesta
  * @author Algaza
  * @version 1.0
  * @access Public
  * @path /barasaki-btm/application/module_frontend/project/views/project_view.php
  */
  ?>
  <?php
  //print_r($contact);exit; 
  ?>
<div class="inner-page contact-us">
	<div class="container">
		<div class="header-intro">
			<h2>Contact Us</h2>
		</div>
		<div class="col-lg-12 contact content-header" id="pricing">
			<div class="col-md-6 no-padding-left">
				<h5>Contact Us:</h5>
				<?php foreach($contact as $v=>$k){?>
					<p><i class="fa fa-map-marker"></i>
					<?php echo $k->address;?></p>
					<p><i class="fa fa-envelope"></i>
						<?php foreach($k->email as $e){
							echo $e.',';
						}?>
						</p>
					<p><i class="fa fa-phone"></i>+62 812 776 2343, +62 821 7455 1008</p>
				<?php } ?>
				<div class="contact-detail"></div>
			</div>
			<div class="col-md-6">
				<input type="text" placeholder="Name">
				<input type="text" placeholder="E-Mail">
				<textarea name="" id="" cols="30" rows="10" placeholder="Message"></textarea>
				<button class="send">Send</button>
			</div>
		</div> 

		<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d997.2860435208844!2d103.978088!3d1.053281!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x3fa6d03256a6178a!2sBarasaki+Sinergi+Semesta!5e0!3m2!1sen!2sid!4v1484624047661" width="100%" height="355" frameborder="0" style="border:0" allowfullscreen></iframe>

	</div>
</div>
<section class="hero-wrap hero-wrap-2" style="background-image: url('<?php echo base_url($header->img);?>');" data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div class="row no-gutters slider-text align-items-center justify-content-center">
			<div class="col-md-9 ftco-animate text-center">
				<h1 class="mb-2 bread"><?php echo $header->caption;?></h1>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section ftco-no-pt ftco-no-pb contact-section">
	<div class="container">
		<div class="row d-flex align-items-stretch no-gutters">
			<div class="col-md-6 p-4 p-md-5 order-md-last bg-light">
				<form id="comment_form">
					<div class="row">
						<div class="col-md-6 form-group">
							<input type="text" name="fname" placeholder="Nama Depan" class="form-control form-control-lg" id="fname" required>
						</div>
						<div class="col-md-6 form-group">
							<input type="text" name="lname" placeholder="Nama Belakang" class="form-control form-control-lg" id="lname" required>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 form-group">
							<input type="email" name="email" placeholder="Email" id="email" class="form-control form-control-lg" required>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 form-group">
							<input type="text" name="subject" placeholder="Judul" required id="subject" class="form-control form-control-lg">
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 form-group">
							<textarea name="message" id="message" placeholder="Pesan" class="form-control form-control-lg" cols="30" rows="8"></textarea>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 form-group captcha-img">
							<?php echo $captcha->image; ?>
						<!-- <a href="#" class="reload-captcha refreshCaptcha btn btn-info btn-sm" ><i class="fa fa-refresh"></i></a> -->							
						<!-- <button type="button" class="reload-captcha refreshCaptcha btn btn-info btn-sm icon icon-refresh" ></button> --> 

						</div>
					</div>
					<div class="form-group">
						<input type="hidden" id="capcode" value="<?php echo $captcha->word;?>">
					</div>
					<div class="row">
						<div class="col-md-12 form-group">
							<input type="text" id="sec_code" placeholder="Kode Keamanan" class="form-control form-control-lg" name="security_code">
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 form-group">
							<button type="submit" class="btn btn-primary btn-lg btn-block">
								Kirim
							</button>
						</div>
					</div>
				</form>
			</div>
			<div class="col-md-6 d-flex align-items-stretch">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3967.109444282728!2d106.78282891474927!3d-6.115966461679635!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6a1dbcb077ed95%3A0x2c284e1a7fa32b59!2sPT.%20IWEBE%20BANGUN%20SOLUSI!5e0!3m2!1sen!2sid!4v1583672571016!5m2!1sen!2sid" width="800" height="600" frameborder="0" style="border:0;" allowfullscreen="">						
				</iframe>
			</div>
		</div>
	</div>
</section>
		<?php //print_r($contact);exit;?>
		<section class="ftco-section contact-section">
      <div class="container">
        <div class="row d-flex mb-5 contact-info">
          <div class="col-md-12 mb-4">
            <h2 class="h4">Contact Information</h2>
          </div>
          <div class="w-100"></div>
	         <!--  <div class="col-md-3 d-flex">
	          	<div class="bg-light d-flex align-self-stretch box p-4">
		            <p><span>Address:</span> 198 West 21th Street, Suite 721 New York NY 10016</p>
		          </div>
	          </div>  <div class="col-md-3 d-flex">
	          	<div class="bg-light d-flex align-self-stretch box p-4">
		            <p><span>Address:</span> 198 West 21th Street, Suite 721 New York NY 10016</p>
		          </div>
	          </div>
	          <div class="col-md-3 d-flex">
	          	<div class="bg-light d-flex align-self-stretch box p-4">
		            <p><span>Phone:</span> <a href="tel://1234567920">+ 1235 2355 98</a></p>
		          </div>
	          </div>
	          <div class="col-md-3 d-flex">
	          	<div class="bg-light d-flex align-self-stretch box p-4">
		            <p><span>Email:</span> <a href="mailto:info@yoursite.com">info@yoursite.com</a></p>
		          </div>
	          </div>
	          <div class="col-md-3 d-flex">
	          	<div class="bg-light d-flex align-self-stretch box p-4">
		            <p><span>Website</span> <a href="#">yoursite.com</a></p>
		          </div>
	          </div> -->
	          
          	<div class="row col-md-12">
 				<div class="col-3">Address:</div>
 				<div class="col-3">Phone:</div>
 				<div class="col-3">Email:</div>
 				<div class="col-3">Website:</div>
      		</div><div class="row col-md-12">
 				<div class="col-3">Jl Pluit Permai 1, Kelurahan Pluit, Jakarta 14450</div>
 				<div class="col-3">+ (021) 22676044</div>
 				<div class="col-3">info@iwebebs.com</div>
 				<div class="col-3">www.iwebebs.com</div>
      		</div>
        </div>
      </div>
    </section>
