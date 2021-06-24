<?php
/*!
 * @package PT. Barasaki Sinergi Semesta
 * @copyright PT. Barasaki Sinergi Semesta
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /barasaki-btm/application/module_admin/home/views/home_view.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');
?>
<section class="category box">
	<div class="box-header">
		<h3 class="box-title">Content</h3>
	</div>
	<div class="box-body pad">
  <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
  	<div class="row">
  		<div class="col-md-12">
  		<table id="example" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">	

  			<thead>
			<tr role="row">
		<th class="sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"  aria-label="Rendering engine: activate to sort column descending" aria-sort="ascending">
			Nama Menu
		</th>
		<th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"  aria-label="Browser: activate to sort column ascending">
			Url
		</th>
		<th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"  aria-label="Platform(s): activate to sort column ascending">
			Description
				</th>
            <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"  aria-label="Platform(s): activate to sort column ascending">
              Image
            </th>
            <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"  aria-label="Platform(s): activate to sort column ascending">
              Status
            </th>
            <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"  aria-label="Platform(s): activate to sort column ascending">
              Position
            </th>
            <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"  aria-label="Platform(s): activate to sort column ascending">
              Icon
            </th>
            <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"  text-align:center;" aria-label="Platform(s): activate to sort column ascending">
              Action
            </th>
  					
  				</tr>
      </thead>
      <tbody>
      	<?php 
      		foreach($data as $dt){
            $img = ( ! empty($dt['img'])) ? front_url($dt['img']) : "";
      	 ?>
      		<tr role="row" class="odd">
          <td class=""><?php echo $dt['caption']; ?></td>
          <td><?php echo substr($dt['url'], 0,30); ?></td>
          <td class=""><?php  echo strip_tags(substr($dt['description'], 0,50)); ?></td>
          <td class=""><img src='<?php echo $img ?>' width="75px"></td>
          <td class=""><?php echo ($dt['is_active'] == 'Y') ? '<span style="color:green;">Enable</span>':'<span style="color:red;">Disable</span>'; ?></td>
          <td class=""><?php echo ($dt['is_admin'] == 'Y') ? '<span style="color:green;">Backend</span>':'<span style="color:red;">Frontend</span>'; ?></td>
          <td class=""><?php echo $dt['icon']; ?></td>
          <td style="text-align:center;"> 
            	<a href="<?php echo base_url('menu/cu_action/edit/'.$dt["id"].'');?>" class="fa btn btn-success fa-pencil"></a>
            	<!-- <button type="button" onclick="delete_data('<?php// echo base_url();?>category/delete/<?php //echo $dt['id'];?>')" class="fa btn btn-danger fa-trash"></a>  -->
          </td>
          </tr>
      	<? 
    
      } ?>
     </tbody>     
    </table>
	</div>
</div>         
	</div>
  </div>
	<div class="box-footer">
		<a href="<?php echo base_url('menu/cu_action/add');?>" class="btn btn-primary">Add</a>
	</div>
</section>
