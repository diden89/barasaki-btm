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
<style>

    .met-editor p{
        margin-bottom: 0;
    }

    pre{
        border:none;
        background: none;
        overflow: hidden;
        font-size: inherit;
    	white-space:pre-wrap;white-space:-moz-pre-wrap;white-space:-pre-wrap;white-space:-o-pre-wrap;word-wrap:break-word;word-break: keep-all;
        padding:0;
        width: 290px;
        line-height: 21px;
        font-family: Arial;
        color:#000;
    }
    .blocks, [class*=blocks-]{
        margin-right: -2.9375rem;
    }
    .sidebar-piclist-ul{
        border-top: 1px solid #ddd;
    }
    .met-showproduct.pagetype1 .met-showproduct-head{
        padding:80px 0;
    }


    .owl-carousel.owl-loaded{
        max-width: 400px;
        margin: 0 auto;
        max-height: 400px;
        /*overflow-y: hidden;*/
        position: relative;
    }
    .met-showimg-con{
        position: relative;
        overflow: hidden;
    }
    .am-next,.am-prev{
        position: absolute;
        font-size:50px;
        color:#999;
        top:50%;
        margin-top:-25px;
        cursor: pointer;
    }
    .am-next{
        right:-150px;
    }
    .am-prev{
        left:-150px;
    }
    .self-dots{
        text-align: center;
        margin-top:25px;
    }
    .self-dots .dots-click{
        display: inline-block;
        cursor: pointer;
        margin: 0 0 10px 10px;
        border: 2px solid #ddd;
        opacity: 0.7;
    }
    .self-dots .dots-click.active{
        border-color: #4e97d9;
        opacity: 1;
    }
    .owl-stage{
        width:1200%;
    }

.sidebar-piclist{
    overflow: hidden;
}
/*product pictures*/
@media(max-width: 900px){
    .am-next, .am-prev{
        display: none;
    }
}
@media(max-width: 991px){
    .met-showproduct.pagetype1 .met-showproduct-body .col-lg-9{
        padding:0!important;
        overflow: hidden;
    }
    li.masonry-child{
        position: static!important;
    }
    .product-detail{
        margin-left:0;
    }
    .sidebar-piclist-ul{
        height:auto!important;
    }
}

.footer-innerbox .icon-link .fa{
    line-height: 30px;
}
/*.gotop .fa{
    line-height: 45px;
}*/
.leftsidebar{
    margin-right: 0;
}
.panel{
    box-shadow: none;
}
.sidebar-piclist {
    overflow: hidden;
}
</style>

<main class="met-showproduct pagetype1 animsition" m-id="noset">
	<div class="met-showproduct-head page-content block-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-9">
					<div class="owl-carousel owl-theme owl-loaded">
						<div class="owl-stage-outer">
							<div class="owl-stage" id="hl">
								<?php 
								$idx = 0;
								foreach($image_prod as $imgprd => $imp){?>
									<div class="owl-item" thumb-src="<?php echo base_url($imp->img); ?>" img-index="<?php echo $idx;?>">
										<img src="<?php echo base_url($imp->img); ?>"   alt="Model NO. : ESL-15N">
									</div>									
								<?php 
								$idx++;
								}?>
							</div>
						</div>
						<span class="am-next iconfont icon-next"></span>
						<span class="am-prev iconfont icon-prev"></span>
						<div id="dots-box" style="height: 0;width:0;overflow:hidden;"></div>
					</div>

				<div class="self-dots">
					<?php foreach($image_prod as $imgprd => $imp){?>
						<span class='dots-click'><img src="<?php echo base_url($imp->img); ?>" alt="Model NO. : ESL-15N" style="width:75px;"></span>						
					<?php }?>
					<!-- <span class='dots-click     active'><img src="../upload/thumb_src/60_60/1569400686.jpg" alt="Model NO. : ESL-15N"></span>
					<span class='dots-click     '><img src="../upload/thumb_src/60_60/1569400842.jpg" alt="Model NO. : ESL-15N"></span>
					<span class='dots-click     '><img src="../upload/thumb_src/60_60/1533536550.jpg" alt="Model NO. : ESL-15N"></span> -->
				</div>

				</div>
				<div class="col-lg-3">
					<div class="product-intro">
						<h1 class='m-t-0 font-size-24'><?php echo $data->products_name;?></h1>
						<p class='description'><pre><?php echo $data->products_short_description;?></pre></p>
						<ul class="shup">
							<li>
							<span><?php echo $data->category_name;?></span>
							</li><li>
							<span>Posted : <?php echo date('d M Y H:i:s',strtotime($data->date));?></span>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		
	</div>
	<div class="met-showproduct-body page-content">
		<div class="container">
			<div class="row">
				<div class="col-lg-9" style="padding-right:45px;">
					<div class="row">
						<div class="panel panel-body m-b-0 product-detail" boxmh-mh>
							<ul class="nav nav-tabs nav-tabs-line m-b-20 met-showproduct-navtabs">
								<li class="nav-item">
									<a class='nav-link active' data-toggle="tab" href="#product-content0" data-get="product-details">Detailed information</a>
								</li>
								<li class="nav-item">
									<a class='nav-link' data-toggle="tab" href="#product-content1" data-get="product-details">Specification</a>
								</li>
								<li class="nav-item">
									<a class='nav-link' data-toggle="tab" href="#product-content2" data-get="product-details">Packing</a>
								</li>
							</ul>
							<article class="tab-content">
								<section class="tab-pane met-editor clearfix animation-fade	active" id="product-content0">
									<?php echo $data->products_detail_description;?>
								</section>
								<section class="tab-pane met-editor clearfix animation-fade
								" id="product-content1">
									<?php echo $data->products_spesification;?>
								</section>
								<section class="tab-pane met-editor clearfix animation-fade
								" id="product-content2"></section>
							</article>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
</main>