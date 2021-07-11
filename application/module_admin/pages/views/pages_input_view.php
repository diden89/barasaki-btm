<?php
/*!
 * @package PT. Barasaki Sinergi Semesta
 * @copyright PT. Barasaki Sinergi Semesta
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /barasaki-btm/application/module_admin/home/views/home_view.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');
?>
<section class="pages box">
	<div class="box-header">
		<h3 class="box-title"><?php echo $cond; ?></h3>
	</div>
	<div class="box-body pad">
		<form id="formInputPages">
			<div class="form-group">
				<label for="txtTitle">Title:</label>
					<input type="text" class="form-control" id="txtTitle" name="txt_title" placeholder="Enter Caption" value='<?php echo (isset($data->title)) ? $data->title : ""; ?>'>
					<input type="hidden" name="txt_id_pages" value="<?php echo (isset($data->id)) ? $data->id : ""; ?>">
			</div>
			<div class="form-group">
				<label for="txtContent">Content:</label>
				<textarea id="txtContent" name="txt_content" id="txt_content" class="textarea" placeholder="Enter content" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"><?php echo (isset($data->content)) ? $data->content : ''; ?></textarea>
			</div>
			<div class="form-group">
				<label for="txtUrl">URL:</label>
					<input type="text" class="form-control" id="txtUrl" name="txt_url" placeholder="Enter URL" value='<?php echo (isset($data->url)) ? $data->url : ""; ?>' disabled>
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
							echo '<option value="Y" selected>Enable</option>';
							echo '<option value="N">Disable</option>';
						}
						
							?>
						
						
					</select>
			</div>
		
	</div>
	<div class="box-footer">
		<button type="submit" class="btn btn-primary" id="submitcategory">Submit</button>
		<a href='<?php echo base_url("pages");?>' class="btn btn-warning" id="submitcategory">Back</a>
	</div>
		</form>
</section>
