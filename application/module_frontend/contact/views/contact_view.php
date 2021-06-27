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
						<p><i class="fa fa-phone"></i>
				<?php } ?>
					<?php 
					$phone = "";
					foreach($contact as $c=>$k){
						$n=0;
						foreach($k->contact as $ct=>$kt){
							if($kt['c_type'] == 'p')
							{
								if($n == 0)
								{
									$phone .= $kt['c_detail'];
								}
								else
								{
									$phone .= ', '.$kt['c_detail'];
								}
								$n++;
							}
						}
					}
					echo $phone;
					?>

					</p>
					<p><i class="fa fa-paper-plane-o"></i>
						<?php 
						$wa = "";
						foreach($contact as $c=>$k){
							$n=0;
							foreach($k->contact as $ct=>$kt){
								if($kt['c_type'] == 'wa')
								{
									if($n == 0)
									{
										$wa .= '<a href="'.$kt['c_url'].'" target="_blank">'.$kt['c_detail'].'</a>';
									}
									else
									{
										$wa .= ', <a href="'.$kt['c_url'].'"  target="_blank">'.$kt['c_detail'].'</a>';
									}
									$n++;
								}
							}
						}
						echo $wa;
						?>
					</p>
				<div class="contact-detail"></div>
			</div>
			<div class="col-md-6">
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
						<!--  <button type="button" class="reload-captcha refreshCaptcha btn btn-info btn-sm icon icon-refresh" ></button>
 -->
						</div>
					</div>
					<div class="row">
						<div class="col-md-2">
							<button type="button" class="reload-captcha btn btn-info">x</button>
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
		</div> 

		<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d997.2860435208844!2d103.978088!3d1.053281!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x3fa6d03256a6178a!2sBarasaki+Sinergi+Semesta!5e0!3m2!1sen!2sid!4v1484624047661" width="100%" height="355" frameborder="0" style="border:0" allowfullscreen></iframe>


		<iframe src="https://drive.google.com/file/d/1ZYMDK4-f8XmupBWctH5RKBQGf0Xz0i5H/preview" width="640" height="480" allow="autoplay"></iframe>
	</div>
</div>