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
<section class="project box">
	<div class="box-header">
		<h3 class="box-title"><?php echo $cond; ?></h3>
	</div>
	<div class="box-body pad">
		<form id="formInputEmployee">
			<div class="form-group">
				<label for="txtTitle">Fullname:</label>
					<input type="text" class="form-control" id="txtFullname" name="txt_fullname" placeholder="Enter Fullname" value='<?php echo (isset($data->fullname)) ? $data->fullname : ""; ?>'>
					<input type="hidden" name="txt_employee_id" value="<?php echo (isset($data->e_id)) ? $data->e_id : ""; ?>">
			</div>
			<div class="form-group">
				<label for="txturl">Place Of Birth:</label>
					<input type="text" class="form-control"  id="txtpob" name="txt_pob" placeholder="Place of Birth" value='<?php echo (isset($data->pob)) ? $data->pob : ""; ?>'>
			</div>
			<div class="form-group">
				<label for="txturl">Date Of Birth:</label>
					<input type="text" class="form-control datepicker" style="width:200px;" id="txtUrl" name="txt_dob" placeholder="Date of Birth ex 01-01-1970" value='<?php echo (isset($data->dob)) ? date('d-m-Y', strtotime($data->dob)) : ""; ?>'>
			</div>
			<div class="form-group">
				<label for="txtDesc">Address:</label>
				<textarea id="txtAdd" name="txt_add" class="textarea" placeholder="Enter content" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"><?php echo (isset($data->address)) ? $data->address : ""; ?></textarea>
			</div>
			<div class="form-group">
				<label for="txtSort">Education:</label>
					<select class="form-control select2 select2-hidden-accessible" style="width: 20%;" data-select2-id="1" tabindex="-1" aria-hidden="true" name="txt_edu">
						<option value="">--Please Select Education--</option>
						<?php 
						$selected = "";
						foreach($education as $ed)
						{
							$selected = (isset($data->ed_caption) && $data->ed_id == $ed['id']) ? "selected" : "";
							echo '<option value="'.$ed['id'].'"'.$selected.'>'.$ed['caption'].'</option>';
						}
						?>
						
					</select>
			</div>
			<div class="form-group">
				<label for="txtSort">Position:</label>
					<select class="form-control select2 select2-hidden-accessible" style="width: 20%;" data-select2-id="1" tabindex="-1" aria-hidden="true" name="txt_pos">
						<option value="">--Please Select Position--</option>
						<?php 
						$selected = "";
						foreach($position as $pos)
						{
							$selected = (isset($data->p_caption) && $data->p_id == $pos['id']) ? "selected" : "";
							echo '<option value="'.$pos['id'].'"'.$selected.'>'.$pos['caption'].'</option>';
						}
						?>
					</select>
			</div>
			<div class="form-group">
				<label for="txtphone">Phone Number:</label>
					<input type="text" class="form-control"  id="txtPhone" name="txt_phone" placeholder="Enter Phone Number" value='<?php echo (isset($data->phone)) ? $data->phone : ""; ?>'>
			</div>
			<div class="form-group">
				<label for="txtemail">Email:</label>
					<input type="text" class="form-control"  id="txtEmail" name="txt_email" placeholder="Enter Your Mail" value='<?php echo (isset($data->email)) ? $data->email : ""; ?>'>
			</div>
			<div class="form-group">
				<label for="txtImg">Image:</label>
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
				<i>*resolution 272px X 272px</i>					
			</div>
			
	</div>
	<div class="box-footer">
		<button type="submit" class="btn btn-primary" id="submitemployee">Submit</button>
		<a href='<?php echo base_url("employee");?>' class="btn btn-warning" id="submitemployee">Back</a>
	</div>
		</form>
</section>
