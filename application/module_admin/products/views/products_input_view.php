<?php
/*!
 * @package Koperasi Bintang tanjuang Madani
 * @copyright Koperasi Bintang tanjuang Madani
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /bintangtanjuangmadani/application/module_admin/home/views/home_view.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');
?>
<section class="project box">
	<div class="box-header">
		<h3 class="box-title"><?php echo $cond; ?></h3>
	</div>
	<div class="box-body pad">
		<form id="formInputProducts">
			<ul class="nav nav-tabs">
				<li class="active"><a href="#tab_1" data-toggle="tab" aria-expanded="false">Products Detail</a></li>
				<li class=""><a href="#tab_2" data-toggle="tab" aria-expanded="true">Products Image</a></li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane active" id="tab_1">
					<div class="box-body pad">
						<div class="form-group">
							<label for="txtProName">Products Name:</label>
								<input type="text" class="form-control" id="txtProName" name="txt_pro_name" placeholder="Enter Products Name" value='<?php echo (isset($data->products_name)) ? $data->products_name : ""; ?>'>
								<input type="hidden" name="txt_pro_id" value="<?php echo (isset($data->products_id)) ? $data->products_id : ""; ?>">
						</div>
						<div class="form-group">
							<label for="txtLoc">Products Price:</label>
								<input type="text" class="form-control" id="txtProPr" name="txt_pro_pr" placeholder="Enter Price" value='<?php echo (isset($data->products_price)) ? $data->products_price : ""; ?>'>
						</div>
						<div class="form-group">
							<label for="txtCatId">Category:</label>
								<select name="cat_id" id="txtCatId" class="form-control"> 
									<?php foreach($category as $cat){
										if(isset($data->category_id))
										{
											if($data->category_id == $cat['id'])
											{
												echo '<option value="'.$cat["id"].'" selected>'.$cat["category_name"].'</option>';
											}
											else
											{
												echo '<option value="'.$cat["id"].'">'.$cat["category_name"].'</option>';
											}
										}
										else
										{
											echo '<option value="'.$cat["id"].'">'.$cat["category_name"].'</option>';
										}
									}?>	
								</select>
						</div>
						<div class="form-group">
							<label for="txtContent">Short Description:</label>
							<textarea id="txtContent1" name="txt_s_desc"  class="textarea" placeholder="Enter content" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"><?php echo (isset($data->products_short_description)) ? $data->products_short_description : ""; ?></textarea>
						</div>

						<div class="form-group">
							<label for="txtContent">Description:</label>
							<textarea id="txtContent2" name="txt_desc" class="textarea" placeholder="Enter content" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"><?php echo (isset($data->products_detail_description)) ? $data->products_detail_description : ""; ?></textarea>
						</div>
						<div class="form-group">
							<label for="txtMetaDesc">Meta Description:</label>
								<textarea id="txtMetaDesc" name="txt_meta_desc" class="textarea" placeholder="Enter content" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"><?php echo (isset($data->meta_desc)) ? $data->meta_desc : ""; ?></textarea>
						</div>
						<div class="form-group">
							<label for="txtMetaKey">Meta Keyword:</label>
								<input type="text" class="form-control" id="txtMetaKey" name="txt_meta_key" placeholder="Enter Keyword" value='<?php echo (isset($data->meta_key)) ? $data->meta_key : ""; ?>'>
						</div>

					</div>
				</div>	
				<div class="tab-pane" id="tab_2">
					<div class="box-body pad">
						<div class="form-group">
							<div>
								<label for="txtImg">Image:</label>
							</div>
								<table class="multipleAdd" style="border-spacing: 15px;border-collapse: separate;">
									<tr class="after-add-input">
										<td>
											Sort :
										</td>
										<td>
											<input type="text" class="form-control" style="width: 50px" name="sort[]" id="sort">
										</td>
										<td>
											<input type="file" id="txtImg" name="txt_img[]">
										</td>
										<td>
											<button class="btn btn-success add-input fa fa-plus" type="button"></button>
										</td>
										
									</tr>
								</table>
								<?php if(isset($data->products_id)){?>
								<div class="form-group">
										<table style="border-spacing: 15px;border-collapse: separate;">
												<?php 
													foreach ($img_prod as $p) 
													{
														echo '<tr>';
														echo '<td>Sort : '.$p['sort'].'</td>';
														echo '<td><img src="'.front_url($p['img']).'" width="75px"></td>';
														echo '<td><a href="'.base_url('products/delete_image/').$p['id']."/".$data->products_id.'" class="btn btn-default fa fa-trash remove-child"></a></td>';
														echo '</tr>';
													}
												?>
											
										</table>
								</div>
							<?php }?>
								<div class="form-group">
									<label for="txtFront">Homepage:</label>
									<?php 
										if(isset($data->is_best))
										{
											if($data->is_best == 'Y')
											{
												echo '<input type="checkbox" value="Y" name="txt_front" id="txtFront" checked>';
											}
											else
											{
												echo '<input type="checkbox" value="Y" name="txt_front" id="txtFront">';
											}
										}
										else
										{
											echo '<input type="checkbox" value="Y" name="txt_front" id="txtFront">';
										}
									?>	            
								</div>
						</div>
					</div>
				</div>
			</div>		
		
	</div>
	<div class="box-footer">
		<button type="submit" class="btn btn-primary" id="submitProducts" value="saveonly">Save</button>
		<a href='<?php echo base_url("products");?>' class="btn btn-warning" id="submitemployee">Back</a>
	</div>
		</form>
</section>
