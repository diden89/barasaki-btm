<?php defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package Barasaki Semesta
 * @copyright Barasaki Semesta
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /D/xampp/htdocs/iwebebs/application/module_frontend/products/views/filter_view.php
 */

?>

<?php 

if( ! empty($projects))
{
	foreach($projects as $prj){?>
		<div class="col-lg-4 col-md-6 col-12 mb-3">
			<div class="media d-block media-feature text-center">
				<div class="media-body">
					<h3 class="mt-0 text-black"><?php echo $prj['project_name']; ?></h3>
					<p><?php echo  $prj['description']; ?></p>
					
				</div>
				<p><span><img src="<?php echo base_url($prj['img']); ?>" width="300px"></span></p> 				
			</div>
		</div>
	<?php }
}
else
{
	?>
	<div class="col-lg-3 col-md-6 col-12 mb-3">
		<div class="media d-block media-feature text-center">
			<p><span><img src="<?php echo base_url('assets/images/product/no_result.png');?>" width="200px"></span></p>
			<div class="media-body">
				<h3 class="mt-0 text-black">No Result Found</h3>
			</div>
		</div>
	</div>
	<?php
}
?>