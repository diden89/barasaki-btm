<?php
/*!
 * @package Koperasi Bintang tanjuang Madani
 * @copyright Koperasi Bintang tanjuang Madani
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /bintangtanjuangmadani/application/module_admin/projects/views/projects_view.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');
?>
<section class="project box">
	<div class="box-header">
		<h3 class="box-title"><?php echo $cond; ?></h3>
	</div>
	<div class="box-body pad">
		<form id="formInputProjects">
			<div class="form-group">
				<label for="txtProName">Project Name:</label>
					<input type="text" class="form-control" id="txtProName" name="txt_pro_name" placeholder="Enter Project Name" value='<?php echo (isset($data->project_name)) ? $data->project_name : ""; ?>'>
					<input type="hidden" name="txt_pro_id" value="<?php echo (isset($data->projects_id)) ? $data->projects_id : ""; ?>">
			</div>
			<div class="form-group">
				<label for="txtLoc">Location Project:</label>
					<input type="text" class="form-control" id="txtLoc" name="txt_loc" placeholder="Enter Location" value='<?php echo (isset($data->location)) ? $data->location : ""; ?>'>
			</div>
			<div class="form-group">
				<label for="txtCatId">Category:</label>
					<select name="cat_id" id="txtCatId" class="form-control"> 
						<option value="">-- Select Category --</option>
						<?php
						// echo $data->category_id;exit;
						 foreach($category as $c=>$k){
							if(isset($data->category_id))
							{

								if($data->category_id == $k->id)
								{
									echo '<option value="'.$k->id.'" selected>'.$k->category_name.'</option>';
								}
								else
								{
									echo '<option value="'.$k->id.'">'.$k->category_name.'</option>';
								}
							}
							else
							{
								
								echo '<option value="'.$k->id.'">'.$k->category_name.'</option>';
								
							}
						}?>	
					</select>
			</div>
			<div class="form-group">
				<label for="txtDesc">Description:</label>
				<textarea id="txtDesc" name="txt_desc" class="textarea" placeholder="Enter content" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"><?php echo (isset($data->description)) ? $data->description : ""; ?></textarea>
			</div>
			<div class="form-group">
				<label for="txtImg">Image:</label>
					<input type="file" id="txtImg" name="txt_img" value='<?php echo (isset($data->img)) ? $data->img : ""; ?>'>
					<?php 
					if (isset($data->img)) { 
						$url_img = $data->img;
	                	$new_url = str_replace('npanel/', "", site_url());?>
						<img src="<?php echo $new_url.$url_img;?>" width="75px">
					<?php } ?>
					<input type="hidden" name="txt_img_old" value="<?php echo (isset($data->img)) ? $data->img : ""; ?>">
			</div>
			<div class="form-group">
				<label for="txtFront">Homepage:</label>
				<?php 
					if(isset($data->front))
					{
						if($data->front == '1')
						{
							echo '<input type="checkbox" value="1" name="txt_front" id="txtFront" checked>';
						}
						else
						{
							echo '<input type="checkbox" value="1" name="txt_front" id="txtFront">';
						}
					}
					else
					{
						echo '<input type="checkbox" value="1" name="txt_front" id="txtFront">';
					}
				?>	            
			</div>
	</div>
	<div class="box-footer">
		<button type="submit" class="btn btn-primary" id="submitProject">Submit</button>
		<a href='<?php echo base_url("projects");?>' class="btn btn-warning" id="submitSlide">Back</a>
	</div>
		</form>
</section>
