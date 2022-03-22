<?php defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package Koperasi Bintang Tanjung Madani
 * @copyright Koperasi Bintang Tanjung Madani
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /D/xampp/htdocs/iwebebs/application/module_frontend/products/views/filter_view.php
 */

?>

<?php 
if( ! empty($products))
{
	foreach($products as $prd){?>
	<div class="col-lg-3 col-md-6 col-12 mb-3">
		<div class="media d-block media-feature text-center">
			<p><span><img src="<?php echo base_url($prd['img']);?>" width="200px"></span></p>
			<div class="media-body">
				<h3 class="mt-0 text-black"><a href="<?php echo base_url('products/detail_products/').$prd['prd_id'] ?>"><?php echo $prd['products_name'];?></a></h3>
				<!-- <p><?php //echo substr($prd['products_description'],0,20);?></p> -->
				<p><?php echo 'Rp. '.number_format($prd['products_price'],2,',','.');?></p>
				<p><a href='https://api.whatsapp.com/send?phone="<?php echo $contact->c_url;?>"&text="<?php echo $contact->c_message;?>"' class="btn btn-primary btn-block">Call Us</a></p>
			</div>
		</div>
	</div>
<?php
	}
}
else
{
	?>
	<div class="col-lg-3 col-md-6 col-12 mb-3">
		<div class="media d-block media-feature text-center">
			<p><span><img src="<?php echo base_url('assets/images/product/no_result.png');?>" width="200px"></span></p>
			<div class="media-body">
				<h3 class="mt-0 text-black">No Result Found</h3>
				
				<p><a href="#" class="btn btn-primary btn-block">Call Us</a></p>
			</div>
		</div>
	</div>
	<?php
}
?>