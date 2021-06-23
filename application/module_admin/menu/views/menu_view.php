<?php
/*!
 * @package Iwebebs
 * @copyright PT Iwebe Bangun Solusi
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /iwebebs/application/module_admin/home/views/home_view.php
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
          <div class="col-sm-6">
            <div class="dataTables_length" id="example1_length">
              <label>
                Filter : 
                <select name="is_admin" id="is_admin" aria-controls="example1" class="form-control input-sm" style="width: 100px">
                  <option value="">-- select --</option>
                  <option value="Y">Backend</option>
                  <option value="N">Frontend</option>
                </select> 
              </label>
            </div>
          </div>
          <div class="col-sm-6">
            <div id="example1_filter" class="dataTables_filter">
              <label>
                Search:
                <input class="form-control input-sm" placeholder="" aria-controls="example1" type="search">
                <button type="submit" class="form-control input-sm btn-primary"><i class="fa fa-search"></i></button>
              </label>
            </div>
          </div>
        </div>
  	<div class="row">
  		<div class="col-md-12">
  		<table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">	

  			<thead>
			<tr role="row">
		<th class="sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column descending" aria-sort="ascending">
			No
		</th>
		
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
      		$no = $number_data;
      		foreach($data as $dt){
            $img = ( ! empty($dt['img'])) ? front_url($dt['img']) : "";
      	 ?>
      		<tr role="row" class="odd">
          <td><?php echo $no; ?></td>
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
      	$no++;
      } ?>
     </tbody>
      <!-- <tfoot>
      <tr><th rowspan="1" colspan="1">Rendering engine</th><th rowspan="1" colspan="1">Browser</th><th rowspan="1" colspan="1">Platform(s)</th><th rowspan="1" colspan="1">Engine version</th><th rowspan="1" colspan="1">CSS grade</th></tr>
      </tfoot> -->
    </table>
    <nav aria-label="Page navigation">
    <?php echo $pagination; ?>
		</nav>
	</div>
</div>
         
	</div>
  </div>
	<div class="box-footer">
		<a href="<?php echo base_url('menu/cu_action/add');?>" class="btn btn-primary">Add</a>
	</div>
</section>
