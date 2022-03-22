<?php defined('BASEPATH') OR exit('No direct script access allowed');
/*!
  * @package Koperasi Bintang tanjuang Madani
  * @copyright Koperasi Bintang tanjuang Madani
  * @author Algaza
  * @version 1.0
  * @access Public
  * @path /bintangtanjuangmadani/application/module_frontend/project/views/registrasi_view.php
  */
  ?>
  <?php
  //print_r($contact);exit; 
  ?>
	<!-- ======= Breadcrumbs ======= -->
	<section id="breadcrumbs" class="breadcrumbs">
		<div class="container">

			<div class="d-flex justify-content-between align-items-center">
				<h2>Form Pendaftaran Anggota Koperasi Bintang tanjuang Madani</h2>
				<ol>
					<li><a href="index.html">Home</a></li>
					<li>Registrasi</li>
				</ol>
			</div>

		</div>
	</section><!-- End Breadcrumbs -->
	<section id="blog" class="blog">
		<div class="container" data-aos="fade-up">

			<div class="row">

				<div class="col-lg-8 entries">
					<article class="entry entry-single">
					<form action="#" id="form_register" method="post" role="form" class="php-email-form" enctype='multipart/form-data'>
						<div class="form-group row mt-3">
							<label class="col-sm-3 col-form-label">NIK KTP</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="nik_ktp" id="nik_ktp" placeholder="NIK KTP" required>
						    </div>
						</div>
						<div class="form-group row mt-3">
							<label class="col-sm-3 col-form-label">Nama Lengkap</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="fullname" id="fullname" placeholder="Nama Lengkap" required>
						    </div>
						</div>
						<div class="row" style="margin-top: 20px;">
							<label class="col-sm-3 col-form-label">Tempat, Tanggal Lahir</label>
							<div class="col-md-5 form-group">
								<input type="text" name="place_of_birth" class="form-control" id="place_of_birth" placeholder="Tempat Lahir" required>
							</div>
							<div class="col-md-4 form-group mt-3 mt-md-0">
								<input type="text" name="birthdate" class="form-control" id="birthdate" required="required" data-inputmask-alias="datetime" data-inputmask-inputformat="dd-mm-yyyy" data-mask value="">
							</div>
						</div>
						<div class="form-group row mt-3">
							<label class="col-sm-3 col-form-label">Alamat</label>
							<div class="col-sm-9">
								<textarea name="address" class="form-control" rows="5" placeholder="Alamat" required></textarea>
						    </div>
						</div>
						<div class="form-group row mt-3">
							<label class="col-sm-3 col-form-label">Pekerjaan</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="occupation" id="occupation" placeholder="Pekerjaan" required>
						    </div>
						</div>
						<div class="form-group row mt-3">
							<label class="col-sm-3 col-form-label">Telpon</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="phone" id="phone" placeholder="Telp" required>
						    </div>
						</div>
						<div class="form-group row mt-3">
							<label class="col-sm-3 col-form-label">Email</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="email" id="email" placeholder="Email" required>
						    </div>							
						</div>
						<div class="form-group row mt-3">
							<label class="col-sm-4 col-form-label">Upload KTP</label>
							<div class="col-sm-8">
								<input type="file" class="form-control" name="upload_ktp" id="upload_ktp" placeholder="Foto KTP" required>
						    </div>							
						</div>
						<div class="form-group row mt-3">
							<label class="col-sm-4 col-form-label">Upload Selfie</label>
							<div class="col-sm-8">
								<input type="file" class="form-control" name="upload_selfie" id="upload_selfie" placeholder="Foto Selfie" required>
						    </div>							
						</div>
						<div class="form-group row mt-3">
							<label class="col-sm-4 col-form-label">Upload Kartu Keluarga</label>
							<div class="col-sm-8">
								<input type="file" class="form-control" name="upload_kk" id="upload_kk" placeholder="Foto Kartu Keluarga" required>
						    </div>
						</div>

						<div class="form-group mt-3"><button type="submit" class="btn btn-primary">Daftar</button></div>
					</form>
					<article>
				</div><!-- End blog entries list -->

				<div class="col-lg-4">

				<div class="sidebar">
					<div class="sidebar-item categories">
						<ul>
						<li><a href="<?php echo base_url('registrasi');?>">Daftar</a></li>
						<li><a href="<?php echo base_url('registrasi/daftar_anggota');?>">Data Anggota</a></li>
						</ul>
					</div><!-- End sidebar categories-->



				</div><!-- End sidebar -->

			</div><!-- End blog sidebar -->

			</div>

		</div>
    </section><!-- End Blog Single Section -->