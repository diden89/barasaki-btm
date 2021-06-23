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
    <section class="ftco-section">
		<div class="container">
			<div class="row">
            
          <div class="col-lg-8 ftco-animate">
            <h2 class="mb-3"><?php echo $berita->title;?></h2>
                <?php echo $berita->description;?>
                     
          </div> <!-- .col-md-8 -->

          <div class="col-lg-4 sidebar ftco-animate">
            <div class="sidebar-box">
              <form id="searchnews" class="search-form">
                <div class="form-group">
                  <span class="icon icon-search"></span>
                  <input type="text" class="form-control" placeholder="Type a keyword and hit enter">
                </div>
              </form>
            </div>
            <div class="sidebar-box ftco-animate">
            	<h3>Category</h3>
              <ul class="categories">
                <?php foreach($category as $ct => $c){?>
                <li><a href="<?php echo base_url('news/category/').$c->id;?>"><?php echo $c->category_name;?><span>(<?php echo $c->total;?>)</span></a></li>
                <?php }?>
              </ul>
            </div>

            <div class="sidebar-box ftco-animate">
              <h3>Berita Populer</h3>
                <?php foreach($popular_news as $pn => $p){?>
                <div class="block-21 mb-4 d-flex">
                    <a class="blog-img mr-4" style="background-image: url('<?php echo base_url($p->image);?>');"></a>
                    <div class="text">
                        <h3 class="heading"><a href="<?php echo base_url('news/show_news/'.$p->id);?>"><?php echo $p->title;?></a></h3>
                        <div class="meta">
                            <div><a href="<?php echo base_url('news/show_news/'.$p->id);?>"><span class="icon-calendar"></span> <?php echo date('M',strtotime($p->date)); ?>. <?php echo date('d',strtotime($p->date)); ?>, <?php echo date('Y',strtotime($p->date)); ?></a></div>
                            <div><a href="<?php echo base_url('news/show_news/'.$p->id);?>"><span class="icon-person"></span> <?php echo $p->author;?></a></div>
                            <div><a href="<?php echo base_url('news/show_news/'.$p->id);?>"><span class="icon-eye"></span> <?php echo $p->count_read;?></a></div>
                        </div>
                    </div>
                </div>
                <?php }?>

          
          </div><!-- END COL -->
        </div>
			</div>
		</section>