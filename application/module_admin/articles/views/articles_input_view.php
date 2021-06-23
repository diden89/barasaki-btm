<?php
/*!
 * @package Iwebebs
 * @copyright PT Iwebe Bangun Solusi
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /iwebebs/application/module_admin/home/views/home_view.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');
?>
<section class="articles box">
	<div class="box-header">
		<h3 class="box-title"><?php echo $cond; ?></h3>
	</div>
	<div class="box-body pad">
		<form id="formInputArticles">
			<div class="form-group">
				<label for="txtTitle">Title:</label>
					<input type="text" class="form-control" id="txtTitle" name="txt_title" placeholder="Enter Title Articles" value='<?php echo (isset($data->title)) ? $data->title : ""; ?>'>
					<input type="hidden" name="txt_id_articles" value="<?php echo (isset($data->id)) ? $data->id : ""; ?>">
			</div>
			<div class="form-group">
				<label for="txtCategory">Category:</label>
					<select class="form-control select2 select2-hidden-accessible" style="width: 20%;" data-select2-id="1" tabindex="-1" aria-hidden="true" name="txt_category">
						<option value="">--Please Select Category--</option>
						<?php if(isset($data->category_id))
						{
							foreach($category as $cat)
							{
								$sel = ($data->category_id == $cat['id']) ? 'selected' : "";
								echo '<option value="'.$cat['id'].'" '.$sel.'>'.$cat['category_name'].'</option>';
							}
						}
						else
						{
							foreach($category as $cat)
							{
								echo '<option value="'.$cat['id'].'">'.$cat['category_name'].'</option>';		
							}				
						}
							?>
						
						
					</select>
			</div>
			<div class="form-group">
				<label for="txtMenu">Menu:</label>
					<select class="form-control select2 select2-hidden-accessible" style="width: 20%;" data-select2-id="1" tabindex="-1" aria-hidden="true" name="txt_menu">
						<option value="">--Please Select Menu--</option>
						<?php if(isset($data->menu_id))
						{
							foreach($datamenu as $mn)
							{
								$sel = ($data->menu_id == $mn['id']) ? 'selected' : "";
								echo '<option value="'.$mn['id'].'" '.$sel.'>'.$mn['caption'].'</option>';
							}
						}
						else
						{
							foreach($datamenu as $mn)
							{
								echo '<option value="'.$mn['id'].'">'.$mn['caption'].'</option>';		
							}				
						}
							?>
						
						
					</select>
			</div>
			<div class="form-group">
				<label for="txtContent">Content:</label>
				<textarea id="txtContent" name="txt_content" id="txt_content" class="textarea" placeholder="Enter content" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"><?php echo (isset($data->content)) ? $data->content : ''; ?></textarea>
			</div>
			<div class="form-group">
				<label for="txtUrl">URL:</label>
					<input type="text" class="form-control" id="txtUrl" name="txt_url" placeholder="Enter URL" value='<?php echo (isset($data->url)) ? $data->url : ""; ?>'>
			</div>
			<div class="form-group">
				<label for="txtStatus">Status:</label>
					<select class="form-control select2 select2-hidden-accessible" style="width: 20%;" data-select2-id="1" tabindex="-1" aria-hidden="true" name="txt_status">
						<option value="">--Please Select Status--</option>
						
						<?php 
						if(isset($data->is_active))
						{
							if($data->is_active == 'Y')
							{
								echo '<option value="Y" selected>Enable</option>';
								echo '<option value="N">Disable</option>';
							}
							else
							{
								echo '<option value="Y">Enable</option>';
								echo '<option value="N" selected>Disable</option>';
							}
						}
						else
						{
							echo '<option value="Y">Enable</option>';
							echo '<option value="N">Disable</option>';
						}
						
							?>
						
						
					</select>
			</div>
		
	</div>
	<div class="box-footer">
		<button type="submit" class="btn btn-primary" id="submitcategory">Submit</button>
		<a href='<?php echo base_url("articles");?>' class="btn btn-warning" id="submitcategory">Back</a>
	</div>
		</form>
</section>
