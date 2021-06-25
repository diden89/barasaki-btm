<?php
/*!
 * @package PT. Barasaki Sinergi Semesta
 * @copyright PT. Barasaki Sinergi Semesta
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /barasaki-btm/application/module_admin/distributor/views/distributor_view.php
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
                            Distributor Name
                        </th>
                        <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"  aria-label="Platform(s): activate to sort column ascending">
                            Description
                        </th>
                        <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"  aria-label="Browser: activate to sort column ascending">
                            Url
                        </th>
                        <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"  aria-label="Platform(s): activate to sort column ascending">
                            Image
                        </th>
                        <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"  aria-label="Platform(s): activate to sort column ascending">
                            Status
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
          <td class=""><?php  echo strip_tags(substr($dt['description'], 0,50)); ?></td>
          <td><?php echo substr($dt['url'], 0,30); ?></td>
          <td class=""><img src='<?php echo $img ?>' width="75px"></td>
          <td class=""><?php echo ($dt['is_active'] == 'Y') ? '<span style="color:green;">Enable</span>':'<span style="color:red;">Disable</span>'; ?>              
          </td>
          <td style="text-align:center;"> 
            	<a href="<?php echo base_url('distributor/cu_action/edit/'.$dt["id"].'');?>" class="fa btn btn-success fa-pencil"></a>
              <button type="button" onclick="deletedata('<?php echo base_url();?>distributor/delete/<?php echo $dt['id'];?>')" class="fa btn btn-danger fa-trash"></button>
          </td>
          </tr>
      	<? } ?>
     </tbody>     
    </table>
	</div>
</div>         
	</div>
  </div>
	<div class="box-footer">
		<a href="<?php echo base_url('distributor/cu_action/add');?>" class="btn btn-primary">Add</a>
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