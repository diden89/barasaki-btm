<?php
/*!
 * @package Koperasi Bintang Tanjung Madani
 * @copyright Koperasi Bintang Tanjung Madani
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /bintangtanjungmadani/application/module_admin/projects/views/projects_view.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');
?>
<section class="services box">
	<div class="box-header">
		<h3 class="box-title">Content</h3>
	</div>
	<div class="box-body pad">
              
              	<div class="row">
              		<div class="col-sm-12">
              		<table id="example" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">	
              			<thead>
              				<tr role="row">
              					<th class="sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" style="width: 200px;" aria-label="Rendering engine: activate to sort column descending" aria-sort="ascending">
              						Project Name
              					</th>
              					<th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" style="width: 500px;" aria-label="Browser: activate to sort column ascending">
              						Description
              					</th>
              					<th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" style="width: 200px;" aria-label="Platform(s): activate to sort column ascending">
              						Location
              					</th>
              					<th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" style="width: 200px; " aria-label="Platform(s): activate to sort column ascending">
              						Image
              					</th>
              					<th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" style="width: 200px; " aria-label="Platform(s): activate to sort column ascending">
              						Homepage
              					</th>
              					<th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" style="width: 200px; " aria-label="Platform(s): activate to sort column ascending">
              						Category
              					</th>
              					<th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" style="width: 200px; " aria-label="Platform(s): activate to sort column ascending">
              						Action
              					</th>
              					
              				</tr>
	                </thead>
	                <tbody>
	                	<?php 
	                	
	                		foreach($data as $dt){
	                		$url_img = $dt['img'];
	                		$new_url = str_replace('npanel/', "", site_url());
	                	 ?>
	                		<tr role="row" class="odd">
			                <td class="sorting_1"><?php echo $dt['project_name']; ?></td>
			                <td class=""><?php echo $dt['description']; ?></td>
			                <td class=""><?php echo $dt['location']; ?></td>
			                <td style="text-align: center;"><img onclick="showImage('<?php echo front_url().$url_img;?>')" src='<?php echo $new_url.$url_img;?>' style="width:100%;max-width:300px"></td>
							<td class=""><?php echo ($dt['front'] == '1') ? 'Yes' : 'No'; ?></td>
							<td class=""><?php echo $dt['category_name']; ?></td>
			                <td>
			                  	<a href="<?php echo base_url('projects/cu_action/edit/'.$dt["projects_id"].'');?>" class="fa btn btn-success fa-pencil"></a>
			                  	<button type="button" onclick="deletedata('<?php echo base_url();?>projects/delete/<?php echo $dt['projects_id'];?>')" class="fa btn btn-danger fa-trash"></a> 
			                </td>
			                </tr>
	                	<? 
	                	
	                } ?>
	               </tbody>
	              </table>
         		</div>
      		</div>
         
	</div>
	<div class="box-footer">
		<a href="<?php echo base_url('projects/cu_action/add');?>" class="btn btn-primary">Add</a>
	</div>
</section>

<!-- delete modal -->

<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Delete Data?</h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">Yakin akan menghapus data ini?</div>
      <div class="modal-footer">
        <button class="btn btn-secondary" type="button" data-dismiss="modal">Tidak</button>
        <a class="btn btn-primary" id="deleteData">Ya</a>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="mymodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body"><img id="img01" width="100%"></div>
      <div class="modal-footer">
        <button class="btn btn-secondary" type="button" data-dismiss="modal">close</button>
      </div>
    </div>
  </div>
</div>