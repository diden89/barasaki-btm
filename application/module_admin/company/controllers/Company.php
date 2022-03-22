<?php
/*!
 * @package Koperasi Bintang Tanjung Madani
 * @copyright Koperasi Bintang Tanjung Madani
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /bintangtanjungmadani/application/module_admin/about_us/controllers/About_us.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Company extends MY_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model('company_model','sm');
	}

	public function index()
	{
		$get_properties = $this->db_home->get_properties($this->uri->segment(1));

		if ($get_properties && $get_properties->num_rows() > 0)
		{	
			$row_properties = $get_properties->row();
			$get_data = $this->sm->get_data();

			$this->store_params['title'] = $this->store_params['title2'] = $row_properties->rm_caption;
			$this->store_params['page_active'] = $row_properties->rm_caption;
			$this->store_params['page_icon'] = $row_properties->rm_icon;
			$this->store_params['source_top'] = array(
				'<link rel="stylesheet" href="'.front_url('assets/templates/admin').'/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">'
			);
			$this->store_params['source_bot'] = array(
				'<script src="'.front_url('assets/js/admin').'/company.js"></script>',
				'<script src="'.front_url('assets/templates/admin').'/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>',
			);
			$company = $get_data->row();
			$this->store_params['data'] = $get_data->row();
			$this->store_params['contact'] = $this->sm->get_contact($company->id)->result();
			$this->store_params['contact_type'] = $this->sm->get_contact_type()->result();
			// print_r($this->store_params);exit;
			// $this->view('modal_projects');
			$this->view('company_view');
		}
		else
		{
			show_404();
		}
	}

	public function input_action()
	{
		// print_r($_POST);exit;
		$upload_dir = str_replace('npanel'.DIRECTORY_SEPARATOR,'' , FCPATH);
		
		$config['upload_path'] = $upload_dir."assets".DIRECTORY_SEPARATOR."images".DIRECTORY_SEPARATOR."compro";
        $config['allowed_types'] ='gif|jpg|png|jpeg|ico';

        $datas['fullname'] = $this->input->post('txt_fullname');
        $datas['owner'] = $this->input->post('txt_owner');
        $datas['address'] = $this->input->post('txt_address');
        $datas['meta_desc'] = $this->input->post('txt_meta_desc');
        $datas['meta_key'] = $this->input->post('txt_meta_key');
        
        $id = $this->input->post('id_company');

        $post['c_type'] = $this->input->post('c_type');
        $post['c_detail'] = $this->input->post('c_detail');
        $post['c_url'] = $this->input->post('c_url');
        $post['c_message'] = $this->input->post('c_message');
        $post['c_id'] = $this->input->post('c_id');

        for($i=0;$i < count($post['c_type']);$i++)
        {
        	if( ! empty($post['c_id'][$i]))
        	{
        		$new_array = array(
        			'c_type' => $post['c_type'][$i],
        			'company_id' => $id,
        			'c_detail' => $post['c_detail'][$i],
        			'c_url' => $post['c_url'][$i],
        			'c_message' => $post['c_message'][$i],
        		);
        		$upd_contact = $this->sm->update_contact($new_array,$post['c_id'][$i]);
        	}
        	else
        	{
        		if( ! empty($post['c_type'][$i]))
        		{
	        		$new_array = array(
	        			'c_type' => $post['c_type'][$i],
	        			'company_id' => $id,
	        			'c_detail' => $post['c_detail'][$i],
	        			'c_url' => $post['c_url'][$i],
	        			'c_message' => $post['c_message'][$i],
	        		);
        			$ins_contact = $this->sm->insert_contact($new_array);
        		}
        	}
        }
       
		$this->load->library('upload',$config);

		if( ! empty($this->input->post('id_company')))
		{

			$old_img = ($this->input->post('txt_img_old') !== "") ? substr($this->input->post('txt_img_old'), 21) : "";
			$old_img_logo = ($this->input->post('txt_img_logo_old') !== "") ? substr($this->input->post('txt_img_logo_old'), 21) : "";
			
			if($this->upload->do_upload('txt_fav'))
			{
				$data = array('upload_data' => $this->upload->data());

	            $image_name	 = $data['upload_data']['file_name']; 
	            $datas['favicon'] = 'assets/images/compro/'.$image_name; 

	            if($old_img !== 'favicon-default.ico' && $old_img !== "")
	            {
	            	unlink($config['upload_path'].DIRECTORY_SEPARATOR.$old_img);
	            }
			}

			//upload logo

			if($this->upload->do_upload('txt_img_logo'))
			{
				$data_logo = array('upload_data' => $this->upload->data());

	            $image_name	 = $data_logo['upload_data']['file_name']; 
	            $datas['logo'] = 'assets/images/compro/'.$image_name; 

	            if($old_img_logo !== 'logo.png' && $old_img_logo !== "")
	            {
	            	unlink($config['upload_path'].DIRECTORY_SEPARATOR.$old_img_logo);
	            }
			}

			$result = $this->sm->do_update($datas,$id);
			echo json_encode(array(
				"status" => $result,
				"url" => base_url('company')
			));

		}
  
	}

	public function delete_contact()
	{
		$id = $this->input->post('id');
		$delete = $this->sm->delete_contact($id);

		if($delete)
		{
			echo json_encode(array(
            	"status" => $delete,
            	"url" => base_url('company')
            ));
		}
		else
		{
			echo json_encode(array(
            	"status" => $delete,
            	"url" => base_url('company')
            ));
		}
	}
}