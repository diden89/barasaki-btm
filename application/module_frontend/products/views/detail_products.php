<?php defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package PT. Barasaki Sinergi Semesta
 * @copyright PT. Barasaki Sinergi Semesta
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /D/xampp/htdocs/iwebebs/application/module_frontend/services/views/services_view.php
 */
?>

<main id="main">
	<!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
        <div class="container">
            <h2 class="portfolio-title"><?php echo $data->products_name;?></h2>
            <div class="row">

                <div class="col-lg-8" data-aos="fade-right">
                    <div class="owl-carousel portfolio-details-carousel">
                        <?php 

                            foreach($image_prod as $imgprd => $imp){
                                ?>
                                <img src="<?php echo base_url($imp->img); ?>" class="img-fluid" alt="">
                            <?php 
                        }?>
                      
                    </div>
                </div>

                <div class="col-lg-4 portfolio-info" data-aos="fade-left">
                    <h3>Informasi Produk</h3>
                    <ul>
                        <li><strong>Nama Produk</strong> : <?php echo $data->products_name;?></li>
                        <li><strong>Kategori</strong> : <?php echo $data->category_name;?></li>
                        <li><strong>Harga</strong> : <?php
                        if($data->products_price != '0' && ! empty($data->products_price))
                        {                  
                            echo '<b>Rp '.number_format($data->products_price).'</b>';                  
                        }
                        else
                        {
                          echo '<b>Call Us</b>'; 
                        }
                        ?></li>
                        <!-- <li><strong>Project URL</strong>: <a href="#">www.example.com</a></li> -->
                    </ul>
                    <?php echo $data->products_short_description;?>
                </div>
                <div class="col-lg-12 portfolio-description">
                    <h2><u>Detail Produk</u></h2>
                    <p>
                    <?php echo $data->products_detail_description;?>
                    </p>
                </div>

            </div>

        </div>
    </section><!-- End Portfolio Details Section -->
</main>