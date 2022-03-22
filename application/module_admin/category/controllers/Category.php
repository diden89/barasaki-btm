<?php
/*!
 * @package Koperasi Bintang Tanjung Madani
 * @copyright Koperasi Bintang Tanjung Madani
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /bintangtanjungmadani/application/module_admin/category/controllers/category.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Category extends MY_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model('category_model','cm');
	}

	public function index()
	{
		$get_properties = $this->db_home->get_properties($this->uri->segment(1));

		if ($get_properties && $get_properties->num_rows() > 0)
		{	
			$row_properties = $get_properties->row();
			$get_data = $this->cm->get_data();

			$this->store_params['pagination'] = $this->pagination->create_links();
			$this->store_params['title'] = $this->store_params['title2'] = $row_properties->rm_caption;
			$this->store_params['page_active'] = $row_properties->rm_caption;
			$this->store_params['page_icon'] = $row_properties->rm_icon;
			$this->store_params['data'] = $get_data->result_array();
			$this->store_params['source_top'] = array(
				'<link rel="stylesheet" href="'.front_url('assets/templates/admin').'/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">'
			);
			$this->store_params['source_bot'] = array(
				'<script src="'.front_url('assets/js/admin/category/').'/category.js"></script>',
				'<script src="'.front_url('assets/templates/admin').'/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>',
				'<script src="'.front_url('assets/templates/admin').'/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>',
				'<script> function delete_data(delete_url){$("#deleteModal").modal("show", {backdrop: "static"});
      			document.getElementById("deleteCategory").setAttribute("href" , delete_url);
    			}</script>'
			);

			// $this->view('modal_projects');
			$this->view('category_view');
		}
		else
		{
			show_404();
		}
	}


	public function cu_action($cond)
	{
		$get_properties = $this->db_home->get_properties($this->uri->segment(1));

		if ($get_properties && $get_properties->num_rows() > 0)
		{	
			$row_properties = $get_properties->row();

			$this->store_params['title'] = $this->store_params['title2'] = $row_properties->rm_caption;
			$this->store_params['page_active'] = $row_properties->rm_caption;
			$this->store_params['page_icon'] = $row_properties->rm_icon;
		
			$this->store_params['source_bot'] = array(
				'<script src="'.front_url('assets/js/admin/category/').'/category_form.js"></script>'
			);
			
			$this->store_params['cond'] = ucwords($cond).' users';
			$this->store_params['cat_type'] = $this->cm->get_cat_type()->result();
			
			if($cond !== 'add')
			{
				$id = $this->uri->segment(4);
				$get_data_edit = $this->cm->get_data_edit($id)->row();
				$this->store_params['data'] = $get_data_edit;
				$this->store_params['url'] = $get_data_edit->url;
			}
			else
			{
				$last_id = $this->cm->get_last_id();
				if($last_id->num_rows() > 0)
				{
					$last = $last_id->row()->id;
					$this->store_params['url'] = 'products/category/'.($last+1);
				}
			}
			
			$this->view('category_input_view');
			
		}
		else
		{
			show_404();
		}
	}

	public function input_action()
	{
	    $datas['category_name'] = $this->input->post('txt_category_name');
	    $datas['type'] = $this->input->post('txt_type');
	    $datas['url'] = $this->input->post('txt_url');
        $datas['is_active'] = $this->input->post('txt_status');
      	
       	$id = $this->input->post('txt_id_category');
       
       	if( ! empty($id))
       	{
       		$result = $this->cm->do_update($datas,$id);

   		  	echo json_encode(array(
            	"status" => $result,
            	"url" => base_url('category')
            ));
       	}
       	else
       	{
       		$result = $this->cm->do_upload($datas);
            echo json_encode(array(
            	"status" => $result,
            	"url" => base_url('category')
            ));
       	}
  
	}

	public function delete()
	{
		$id = $this->uri->segment(3);

		$get_category = $this->cm->get_data_edit($id)->row();
		
		$datas['id'] = $get_category->id;
        $datas['category_name'] = $get_category->category_name;
        $datas['is_active'] = $get_category->is_active;
        $datas['type'] = $get_category->type;
      
		$deletecategory = $this->cm->delete($datas,$id);
		redirect(base_url('category'), 'refresh');
	}
}