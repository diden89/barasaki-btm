<?php defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package Iwebebs
 * @copyright PT Iwebe Bangun Solusi
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /D/xampp/htdocs/iwebebs/application/module_frontend/services/views/services_view.php
 */
?>

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

    <!-- start news -->
<?php echo count($berita);if( ! empty($berita)) {?>
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
      <?php foreach($berita as $n => $w) {?>
      <div class="col-md-3 ftco-animate">
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
              <p class="mb-0"><a href="<?php echo base_url();?>news/show_news/<?php echo $w->news_id;?>" class="btn btn-primary">Read More <span class="ion-ios-arrow-round-forward"></span></a></p>
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