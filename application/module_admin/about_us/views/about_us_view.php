<?php
/*!
 * @package Koperasi Bintang Tanjung Madani
 * @copyright Koperasi Bintang Tanjung Madani
 * @author Sikolopes
 * @version 1.0
 * @access Public
 * @path /bintangtanjungmadani/application/module_admin/home/views/home_view.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');
?>
<section class="about_us box">
	<div class="box-header">
		<h3 class="box-title">Content</h3>
	</div>
	<div class="box-body pad">
		<form id="formAboutUs">
			<div class="form-group">
				<label for="txtTitle">Title:</label>
				<input type="text" class="form-control" id="txtTitle" name="txt_title" placeholder="Enter title" value="<?php echo $data->title; ?>">
				<input type="hidden" name="id_article" value="<?php echo $data->id; ?>">
			</div>
			<div class="form-group">
				<label for="txtContent">Content:</label>
				<textarea id="txtContent" name="txt_content" class="textarea" placeholder="Enter content" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"><?php echo $data->content; ?></textarea>
			</div>
		</form>
	</div>
	<div class="box-footer">
		<button type="button" class="btn btn-primary">Submit</button>
	</div>
</section>
