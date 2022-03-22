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
				<h2>Daftar Anggota Koperasi Bintang tanjuang Madani</h2>
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

					<table id="example" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info" style="width: 50%;font-size: 11px;">	
              			<thead>
              				<tr role="row">
              					<th class="sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" style="width: 300px;" aria-label="Rendering engine: activate to sort column descending" aria-sort="ascending">
              						No Reg
              					</th>
              					<th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" style="width: 300px;" aria-label="Browser: activate to sort column ascending">
              						Nama Lengkap
              					</th>
                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" style="width: 300px;" aria-label="Browser: activate to sort column ascending">
                                    Tempat, Tanggal Lahir
                                </th> 
                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" style="width: 300px;" aria-label="Browser: activate to sort column ascending">
                                    Alamat
                                </th>
                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" style="width: 300px;" aria-label="Browser: activate to sort column ascending">
                                    Pekerjaan
                                </th>
                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" style="width: 300px;" aria-label="Browser: activate to sort column ascending">
                                    No Telp
                                </th>
                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" style="width: 300px;" aria-label="Browser: activate to sort column ascending">
                                    Email
                                </th>
              					<th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" style="width: 300px; " aria-label="Platform(s): activate to sort column ascending">
              						Status
              					</th>
              				</tr>
	                </thead>
	                <tbody>
	                	<?php 
	                		foreach($data as $dt){
	                	 ?>
	                		<tr role="row" class="odd">
			                <td class=""><?php echo $dt['ur_no_reg']; ?></td>
			                <td class=""><?php echo $dt['ur_fullname']; ?></td>
			                <td class=""><?php echo $dt['ur_place_birth'].', '.date('d-m-Y', strtotime($dt['ur_date_birth'])); ?></td>
			                <td class=""><?php echo $dt['ur_address']; ?></td>
			                <td class=""><?php echo $dt['ur_occupation']; ?></td>
			                <td class=""><?php echo $dt['ur_phone']; ?></td>
			                <td class=""><?php echo $dt['ur_email']; ?></td>
                            <td class=""><?php 
                            	$verifikasi = '';
                            	if($dt['ur_verifikasi'] == 'N')
                            	{
                            		$verifikasi = 'Sedang di Verifikasi';
                            	}
                            	else if($dt['ur_verifikasi'] = 'level_1')
                            	{
                            		$verifikasi = 'Verifikasi Tahap 1';
                            	}
                            	else if($dt['ur_verifikasi'] = 'level_2')
                            	{
                            		$verifikasi = 'Verifikasi Tahap 2';
                            	}
                            	else if($dt['ur_verifikasi'] = 'level_3')
                            	{
                            		$verifikasi = 'Verifikasi Tahap 3';
                            	}
                            	else if($dt['ur_verifikasi'] = 'setuju')
                            	{
                            		$verifikasi = 'Disetujui';
                            	}
                            	else
                            	{
                            		$verifikasi = 'Di Tolak';
                            	}
                            	
                            echo $verifikasi; ?></td>
			                </tr>
	                	<? 
	                } ?>
	               </tbody>
	              </table>
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