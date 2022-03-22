<?php
/*!
 * @package Koperasi Bintang Tanjung Madani
 * @copyright Koperasi Bintang Tanjung Madani
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /bintangtanjungmadani/application/module_admin/home/views/home_view.php
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
              						Products Name
              					</th>
              					<th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" style="width: 500px;" aria-label="Browser: activate to sort column ascending">
              						Short Description
              					</th>  
                        <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" style="width: 500px;" aria-label="Browser: activate to sort column ascending">
                          Description
                        </th>
              					<th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" style="width: 200px;" aria-label="Platform(s): activate to sort column ascending">
              						Price
              					</th>
              					<th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" style="width: 200px; " aria-label="Platform(s): activate to sort column ascending">
              						Best Products
              					</th>
                        <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" style="width: 200px; " aria-label="Platform(s): activate to sort column ascending">
                          Meta Description
                        </th>
              					<th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" style="width: 200px; " aria-label="Platform(s): activate to sort column ascending">
                          Meta Keyword
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
	                	 ?>
	                		<tr role="row" class="odd">
			                <td class="sorting_1"><?php echo $dt['products_name']; ?></td>
			                <td class=""><?php echo substr(strip_tags($dt['products_short_description']),0,50); ?></td>
                             <td class=""><?php echo substr(strip_tags($dt['products_detail_description']),0,50); ?></td>
			                <td class=""><?php echo $dt['products_price']; ?></td>
        					<td class=""><?php echo ($dt['is_best'] == 'Y') ? 'Yes' : 'No'; ?></td>
                            <td class=""><?php echo $dt['meta_desc']; ?></td>
                            <td class=""><?php echo $dt['meta_key']; ?></td>
        					<td class=""><?php echo $dt['category_name']; ?></td>
			                <td>
			                  	<a href="<?php echo base_url('products/cu_action/edit/'.$dt["products_id"].'');?>" class="fa btn btn-success fa-pencil"></a>
			                  	<button type="button" onclick="deleteproducts('<?php echo base_url();?>products/delete/<?php echo $dt['products_id'];?>')" class="fa btn btn-danger fa-trash"></a> 
			                </td>
			                </tr>
	                	<? 
	                	
	                } ?>
	               </tbody>
	                <!-- <tfoot>
	                <tr><th rowspan="1" colspan="1">Rendering engine</th><th rowspan="1" colspan="1">Browser</th><th rowspan="1" colspan="1">Platform(s)</th><th rowspan="1" colspan="1">Engine version</th><th rowspan="1" colspan="1">CSS grade</th></tr>
	                </tfoot> -->
	              </table>
	             
         		</div>
      		</div>
         
	</div>
	<div class="box-footer">
		<a href="<?php echo base_url('products/cu_action/add');?>" class="btn btn-primary">Add</a>
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
        <a class="btn btn-primary" id="deleteProducts">Ya</a>
      </div>
    </div>
  </div>
</div>
