<?php
/*!
 * @package PT. Barasaki Sinergi Semesta
 * @copyright PT. Barasaki Sinergi Semesta
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /barasaki-btm/application/module_admin/download/views/download_view.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');
?>
<section class="download box">
	<div class="box-header">
		<h3 class="box-title"><?php echo $cond; ?></h3>
	</div>
	<div class="box-body pad">
		<form id="formInputDownload" enctype='multipart/form-data'>
			<div class="form-group">
				<label for="txtCaption">Caption:</label>
					<input type="text" class="form-control" id="txtCaption" name="txt_caption" placeholder="Nama File" value='<?php echo (isset($data->caption)) ? $data->caption : ""; ?>' required>
					<input type="hidden" name="txt_id_download" id="txt_id_download" value="<?php echo (isset($data->id)) ? $data->id : ""; ?>">
			</div>
			<div class="form-group">
				<label for="txtDescription">Description:</label>
				<textarea id="txtDescription" name="txt_desc" class="textarea" placeholder="Enter content" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"><?php echo (isset($data->description)) ? $data->description : ""; ?></textarea>
			</div>
			<div class="form-group">
				<label for="txtImg">Cover:</label>
					<input type="file" id="txtImg" name="txt_img" value='<?php echo (isset($data->img)) ? $data->img : ""; ?>'>
					<?php 
					if (isset($data->img)) { 
						$url_img = $data->img;
	              		?>
						<img src="<?php echo front_url().$url_img;?>" width="300px">
					<?php } ?>
					<input type="hidden" name="txt_img_old" value="<?php echo (isset($data->img)) ? $data->img : ""; ?>">
			</div>
			<div class="form-group">
				<label for="txtImg">File:</label>
					<input type="file" id="txtFile" name="txt_file">
					<input type="text" class="form-control" name="txt_file_old" value="<?php echo (isset($data->file)) ? $data->file : ""; ?>" disabled>
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
		<a href='<?php echo base_url("download");?>' class="btn btn-warning" id="submitcategory">Back</a>
	</div>
		</form>
</section>