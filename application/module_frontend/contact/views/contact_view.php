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
				<form id="comment_form">
					
						<div class="col-md-6 ">
							<input type="text" name="fname" placeholder="Nama Depan"  id="fname" required>
						</div>
						<div class="col-md-6 ">
							<input type="text" name="lname" placeholder="Nama Belakang"  id="lname" required>
						</div>		
						<div class="col-md-12 ">
							<input type="text" name="email" placeholder="Email" id="email"  required>
						</div>
						<div class="col-md-12 ">
							<input type="text" name="subject" placeholder="Judul" required id="subject" >
						</div>
						<div class="col-md-12 ">
							<textarea name="message" id="message" placeholder="Pesan"  cols="30" rows="8"></textarea>
						</div>					
						<div class="col-md-12  captcha-img">
							<?php echo $captcha->image; ?>
						<!-- <a href="#" class="reload-captcha refreshCaptcha btn btn-info btn-sm" ><i class="fa fa-refresh"></i></a> 	 -->						
						<button type="button" class="reload-captcha refreshCaptcha btn btn-info btn-sm icon icon-refresh" ><i class="fa fa-refresh"></i></button>
						</div>
					
					<div class="">
						<input type="hidden" id="capcode" value="<?php echo $captcha->word;?>">
					</div>
					
						<div class="col-md-12 ">
							<input type="text" id="sec_code" placeholder="Kode Keamanan"  name="security_code">
						</div>
					
					
						<div class="col-md-6 ">
							<button type="submit" class="send">
								Kirim
							</button>
						</div>
					
				</form>
			</div>
		</div> 

		<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d997.2860435208844!2d103.978088!3d1.053281!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x3fa6d03256a6178a!2sBarasaki+Sinergi+Semesta!5e0!3m2!1sen!2sid!4v1484624047661" width="100%" height="355" frameborder="0" style="border:0" allowfullscreen></iframe>

	</div>
</div>