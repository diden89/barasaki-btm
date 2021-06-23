<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!-- start slider -->
<section class="home-slider owl-carousel">
	<?php foreach ($slide as $k => $v) { ?>
	<div class="slider-item" style="background-image:url(<?php echo base_url($v->img); ?>);" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
		<div class="row no-gutters slider-text align-items-center justify-content-end" data-scrollax-parent="true">
		<div class="col-md-6 text ftco-animate pl-md-5">
		<h1 class="mb-4"><?php echo $v->title; ?></h1>
		<h3 class="subheading"><?php echo ucwords($v->description); ?></h3>
		<p><a href="#" class="btn btn-secondary px-4 py-3 mt-3">Permintaan Penawaran</a></p>
		</div>
		</div>
		</div>
	</div>
	<?php } ?>
	
	</section>
<!-- end slider -->
<!-- start form -->
 <section class="ftco-section ftco-no-pt ftco-margin-top">
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="request-quote">
					<div class="bg-primary py-4">
						<span class="subheading">Jadilah Bagian Dari Bisnis Kami</span>
						<h3>Permintaan Penawaran</h3>
					</div>
					<form id="sendTellUs" class="request-form ftco-animate">
						<div class="form-group">
							<input type="text" name="fname" class="form-control" placeholder="Nama Depan" required>
						</div>
						<div class="form-group">
							<input type="text" name="lname" class="form-control" placeholder="Nama Belakang" required>
						</div>
						<div class="form-group">
							<div class="form-field">
							<div class="select-wrap">
							<div class="icon"><span class="ion-ios-arrow-down"></span></div>
							<select name="bidang" id="" class="form-control">
								<option value="">Bidang Anda</option>
								<option value="">Konstruksi</option>
								<option value="">Lampu PJU</option>
								<option value="">AC</option>
								<option value="">Lainnya</option>
							</select>
							</div>
							</div>
						</div>
						<div class="form-group">
							<input type="text" name="no_telp" class="form-control" placeholder="No Telp" required>
						</div>
						<div class="form-group">
							<textarea name="content" id="" cols="30" rows="2" class="form-control" placeholder="Pesan" required></textarea>
						</div>
						<div class="form-group captcha-img">
							<?php echo $captcha->image; ?>
						</div>
						<div class="form-group">
							<input type="hidden" id="capcode" value="<?php echo $captcha->word;?>">
						</div>
						<div class="form-group">
							<input type="text" id="sec_code" name="security_code" class="form-control" placeholder="Kode Keamanan" required>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary py-3 px-4">Buat Penawaran</button>
						</div>
					</form>
				</div>
			</div>
		<div class="col-md-8 wrap-about py-5 ftco-animate">
			<div class="heading-section mb-5">
				<h2 class="mb-4">Kami Adalah Perusahaan Konstruksi Yang Sangat Direkomendasikan</h2>
			</div>
			<div class="">
				<p class="mb-5">Kami adalah Kontraktor yang bergerak di bidang Mekanikal dan Elektrikal dengan “Cepat, Tanggap dan Penuh Tanggung Tawab” adalah prinsip perusahaan kami.
				PT. Iwebe Bangun Solusi (iBees) mempunyai Tim Profesional yang handal, bersertifikat, dan berpengalaman dalam menangani Proyek Lokal maupun Nasional. Kami juga selalu berkomitmen untuk selalu memberikan dan menghasilkan karya dan produk yang terbaik bagi setiap klien kami.
				Kami mampu menjadi rekanan yang handal untuk mengerjakan Proyek-Proyek di bidang Mekanikal dan Elektrikal. Bidang-bidang kami mencangkup: Hotel, Apartement, Rumah Sakit, Gedung Perkantoran, Gerai Retail dan lain-lain.
				</p>
				<p><a href="<?php echo base_url('pages/detail/about_us')?>" class="btn btn-secondary px-5 py-3">Selanjutnya</a></p>
			</div>
		</div>
		</div>
	</div>
</section>
<!-- end form -->

<!-- start services -->
<section class="ftco-services ftco-no-pt">
	<div class="container">
		<div class="row justify-content-center mb-5 pb-2">
			<div class="col-md-8 text-center heading-section ftco-animate">
				<span class="subheading">Layanan</span>
				<h2 class="mb-4">Layanan Kami</h2>
				<p>PT. Iwebe Bangun Solusi adalah bentuk perusahaan yang bergerak dalam pengadaan barang, layanan dan pemeliharaan, yang meliputi:</p>
			</div>
		</div>
		<div class="row">
			<?php foreach ($services as $k => $v) { ?>
			<!-- <div class="col-md-3 d-flex services align-self-stretch p-3 ftco-animate align-items-center">
				<div class="media block-4 d-block text-center">
					<div class="icon d-flex justify-content-center align-items-center">
						<span class="flaticon-hook"></span>
					</div>
					<div class="media-body p-2 mt-3">
						<h3 class="heading"><?php //echo $v->caption; ?></h3>
						<p><?php //echo $v->description; ?></p>
					</div>
				</div>      
			</div> -->
				<div class="col-md-3 d-flex services align-self-stretch p-4 ftco-animate">
					<div class="media block-6 d-block text-center">
						<div class="icon d-flex justify-content-center align-items-center">
							<span class="flaticon-hook"></span>
						</div>
						<div class="media-body p-2 mt-3">
							<h3 class="heading"><?php echo $v->caption; ?></h3>
							<p><?php echo $v->description; ?></p>
						</div>
					</div>      
				</div>
			<?php } ?>
		</div>
	</div>
</section>
<!-- end services -->

<!-- start project -->
<section class="ftco-section ftco-no-pt ftco-no-pb">
	<div class="container-fluid p-0">
		<div class="row no-gutters justify-content-center mb-5 pb-2">
			<div class="col-md-6 text-center heading-section ftco-animate">
				<span class="subheading">Proyek</span>
				<h2 class="mb-4">Proyek yang pernah kami kerjakan</h2>
				<p>Berikut ini adalah beberapa proyek yang telah kami kerjakan, baik di bidang mekanik dan listrik</p>
			</div>
		</div>
		<div class="row no-gutters">
			<?php foreach ($projects as $k => $v) { ?>
			<div class="col-md-6 col-lg-3 ftco-animate">
				<div class="project">
					<img src="<?php echo base_url($v->img); ?>" class="img-fluid" alt="Colorlib Template">
					<div class="text">
						<span>Commercial</span>
						<h3><a href=""><?php echo $v->project_name; ?></a></h3>
					</div>
					<a href="<?php echo base_url($v->img); ?>" class="icon image-popup d-flex justify-content-center align-items-center">
						<span class="icon-expand"></span>
					</a>
				</div>
			</div>
			<?php } ?>
		</div>
	</div>
</section>
<!-- end project -->
<!-- start sum project -->
 <section class="ftco-counter img" id="section-counter" style="background-image: url(images/bg_3.jpg);" data-stellar-background-ratio="0.5">
    	<div class="container">
				<div class="row">
          <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 d-flex">
              <div class="text d-flex align-items-center">
                <strong class="number" data-number="<?php echo $since_years; ?>">0</strong>
              </div>
              <div class="text-2">
              	<span>Tahun <br>Pengalaman</span>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 d-flex">
              <div class="text d-flex align-items-center">
                <strong class="number" data-number="<?php echo $total_projects->total;?>">0</strong>
              </div>
              <div class="text-2">
              	<span>Pekerjaan <br>Telah Diselesaikan</span>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 d-flex">
              <div class="text d-flex align-items-center">
                <strong class="number" data-number="<?php echo $total_team->total;?>">0</strong>
              </div>
              <div class="text-2">
              	<span>Team <br>Berpengalaman</span>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 d-flex">
              <div class="text d-flex align-items-center">
                <strong class="number" data-number="<?php echo $total_projects->total;?>">0</strong>
              </div>
              <div class="text-2">
              	<span>Pelanggan <br>Senang</span>
              </div>
            </div>
          </div>
        </div>
    	</div>
    </section>

<!-- end sum project -->
<!-- start products -->
<section class="ftco-section bg-light">
	<div class="container">
		<div class="row justify-content-center mb-5 pb-2">
			<div class="col-md-8 text-center heading-section ftco-animate">
				<span class="subheading">Produk</span>
				<h2 class="mb-4">Produk Terbaik</h2>
				<p>Informasi tentang produk terbaik yang akan kami berikan untuk Anda.</p>
			</div>
		</div>
		<div class="row">
			<?php foreach ($products as $p => $r) { ?>
			<div class="col-md-3 ftco-animate">
				<div class="blog-entry">
				<a href="<?php echo base_url();?>products/detail_products/<?php echo $r->id;?>" class="block-20" style="background-image: url(<?php echo base_url($r->img); ?>);">
				<!-- <div class="meta-date text-center p-2">
				<span class="day"><?php //echo date('d',strtotime($r->date)); ?></span>
				<span class="mos"><?php// echo date('F',strtotime($r->date)); ?></span>
				<span class="yr"><?php //echo date('Y',strtotime($r->date)); ?></span>
				</div> -->
				</a>
				<div class="text pt-4">
				<h3 class="heading"><a href="<?php echo base_url();?>products/detail_products/<?php echo $r->id;?>"><?php echo $r->products_name; ?></a></h3>
				<!--<p><?php //echo $r->products_short_description; ?></p>-->
				</div>
				</div>
			</div>
			<?php } ?>
		</div>
	</div>
</section>
<!-- end products -->

<!-- start news -->
<?php if( ! empty($news)) {?>
<section class="ftco-section bg-light">
	<div class="container">
		<div class="row justify-content-center mb-5 pb-2">
			<div class="col-md-8 text-center heading-section ftco-animate">
				<span class="subheading">Berita</span>
				<h2 class="mb-4">Informasi perusahaan</h2>
				<p>
				Informasi tentang PT. Iwebe Build Solutions baik di bidang pekerjaan maupun di bidang masyarakat.</p>
			</div>
		</div>
		<div class="row">
			<?php foreach($get_news as $n => $w) {?>
			<div class="col-md-4 ftco-animate">
				<div class="blog-entry">
					<a href="<?php echo base_url();?>news/show_news/<?php echo $w->news_id;?>" class="block-20" style="background-image: url('<?php echo base_url($w->image); ?>');">
						<div class="meta-date text-center p-2">
							<span class="day"><?php echo date('d',strtotime($w->date)); ?></span>
							<span class="mos"><?php echo date('F',strtotime($w->date)); ?></span>
							<span class="yr"><?php echo date('Y',strtotime($w->date)); ?></span>
						</div>
					</a>
					<div class="text pt-4">
						<h3 class="heading"><a href="<?php echo base_url();?>news/show_news/<?php echo $w->news_id;?>"><?php echo $w->title;?></a></h3>
						<p><?php echo substr($w->description,0,50);?></p>
						<div class="d-flex align-items-center mt-4">
							<p class="mb-0"><a href="<?php echo base_url();?>news/show_news/<?php echo $w->news_id;?>" class="btn btn-primary">Selanjutnya <span class="ion-ios-arrow-round-forward"></span></a></p>
							<p class="ml-auto mb-0">
								<a href="<?php echo base_url();?>news/show_news/<?php echo $w->news_id;?>" class="mr-2"><?php echo $w->author;?></a>
								<a href="<?php echo base_url();?>news/show_news/<?php echo $w->news_id;?>" class="meta-chat"><span class="icon-chat"></span> <?php echo $w->count_read;?></a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<?php } ?>
		</div>
	</div>
</section>
<?php }?>
<!-- end news -->
<!-- start Legal -->
<section class="ftco-legal ftco-no-pt">
	<div class="container">
		<div class="row justify-content-center mb-5 pb-2">
			<div class="col-md-8 text-center heading-section ftco-animate">
				<span class="subheading">Company Law</span>
				<h2 class="mb-4">Certificate, Legals & Financial Strength</h2>
				<p>Legalitas Yang sudah di miliki oleh PT. Iwebe Bangun Solusi adalah bentuk komitmen perusahaan dalam memberikan layanan yang terbaik</p>
			</div>
		</div>
		<div class="row">
			<?php foreach ($company_legal as $c => $l) { ?>
			<div class="col-md-4 d-flex services align-self-stretch p-4 ftco-animate">
				<div class="media block-6 d-block text-center">
					<div class="icon d-flex justify-content-center align-items-center">
						<img src="<?php echo base_url($l->img); ?>" width="100px"><p>
					</div>
					<div class="media-body p-2 mt-3">
						<h3 class="heading"><?php echo $l->caption; ?></h3>
						<p><?php echo $l->description; ?></p>
					</div>
				</div>      
			</div>
			<?php } ?>
		</div>
	</div>
</section>
<!-- end Legal -->
<!-- start team -->
<section class="ftco-section">
	<div class="container">
	<div class="row justify-content-center mb-5 pb-2">
	<div class="col-md-8 text-center heading-section ftco-animate">
	<span class="subheading">Team</span>
	<h2 class="mb-4">Our Professional Team</h2>
	<p>A solid team with high integrity is joined with us.</p>
	</div>
	</div>	
	<div class="row">
	<?php foreach ($team as $k => $v) { ?>
		<div class="col-md-6 col-lg-3 ftco-animate">
			<div class="staff">
				<div class="img-wrap d-flex align-items-stretch">
					<div class="img align-self-stretch" style="background-image: url(<?php echo base_url($v->img); ?>);"></div>
				</div>
				<div class="text pt-3 text-center">
					<h3><?php echo $v->fullname; ?></h3>
					<span class="position mb-2"><?php echo $v->position; ?></span>
					<div class="faded">
						<!-- <p>I am an ambitious workaholic, but apart from that, pretty simple person.</p> -->
						<ul class="ftco-social text-center">
							<li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
							<li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
							<li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
							<li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	<?php } ?>
	</div>
	</div>
</section>
<!-- end team -->