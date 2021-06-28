<?php
/*!
 * @package PT. Barasaki Sinergi Semesta
 * @copyright PT. Barasaki Sinergi Semesta
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /barasaki-btm/application/module_admin/Site_map/views/Site_map_view.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');
?>
<section class="site_map box">
	<div class="box-header">
		<h3 class="box-title"><?php echo $cond; ?></h3>
	</div>
	<div class="box-body pad">
		<form id="formInputSiteMap">
			<div class="form-group">
				<label for="txtCategory_name">Nama Menu:</label>
					<input type="text" class="form-control" id="txtCaption" name="txt_caption" placeholder="Enter Nama Menu" value='<?php echo (isset($data->caption)) ? $data->caption : ""; ?>'>
					<input type="hidden" name="txt_id" id="txt_id" value="<?php echo (isset($data->id)) ? $data->id : ""; ?>">
					<input type="hidden" name="txt_ut_id" id="txt_ut_id" value="<?php echo (isset($data->ut_id)) ? $data->ut_id : ""; ?>">
			</div>	
			<div class="form-group">
				<label for="txtUrl">URL Menu:</label>
					<input type="text" class="form-control" id="txtUrl" name="txt_url" placeholder="Enter URL Menu" value='<?php echo (isset($data->url)) ? $data->url : ""; ?>'>
			</div>
			<div class="form-group">
				<label for="txtUrl">URL Target:</label>
					<select class="form-control select2 select2-hidden-accessible" style="width: 20%;" data-select2-id="1" tabindex="-1" aria-hidden="true" name="txt_url_target">
						<option value="">--URL Target--</option>						
						<?php 
						$sel = "";
						foreach($url_target as $u=>$t)
						{
							$sel = ($data->ut_id == $t->id) ? 'selected' : '';
							echo '<option value="'.$t->id.'" '.$sel.'>'.$t->caption.'</option>';
						}
							?>
						
						
					</select>
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
		<a href='<?php echo base_url("site_map");?>' class="btn btn-warning" id="submitcategory">Back</a>
	</div>
		</form>
</section>
