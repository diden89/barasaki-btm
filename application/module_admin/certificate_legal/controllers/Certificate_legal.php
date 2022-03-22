<?php
/*!
 * @package Koperasi Bintang Tanjung Madani
 * @copyright Koperasi Bintang Tanjung Madani
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /bintangtanjungmadani/application/module_admin/about_us/controllers/About_us.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Certificate_legal extends MY_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model('certificate_legal_model','clm');
	}

	public function index()
	{
		$get_properties = $this->db_home->get_properties($this->uri->segment(1));

		if ($get_properties && $get_properties->num_rows() > 0)
		{
			$total_data =  $this->clm->get_data($limit = "",$start = "")->num_rows();
			//pagination
			//konfigurasi pagination

	        $config['base_url'] = base_url('certificate_legal/index'); //site url
	        $config['total_rows'] = $total_data; //total row
	        $config['per_page'] = 10;  //show record per halaman
	        $config["uri_segment"] = 3;  // uri parameter
	        $choice = $config["total_rows"] / $config["per_page"];
	        $config["num_links"] = floor($choice);

	         // Membuat Style pagination untuk BootStrap v4
	     	$config['first_link']       = 'First';
	        $config['last_link']        = 'Last';
	        $config['next_link']        = 'Next';
	        $config['prev_link']        = 'Prev';
	        $config['full_tag_open']    = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
	        $config['full_tag_close']   = '</ul></nav></div>';
	        $config['num_tag_open']     = '<li class="page-item"><span class="page-link">';
	        $config['num_tag_close']    = '</span></li>';
	        $config['cur_tag_open']     = '<li class="page-item active"><span class="page-link">';
	        $config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></li>';
	        $config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
	        $config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
	        $config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
	        $config['prev_tagl_close']  = '</span>Next</li>';
	        $config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
	        $config['first_tagl_close'] = '</span></li>';
	        $config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
	        $config['last_tagl_close']  = '</span></li>';
	 
	        $this->pagination->initialize($config);
	       	$this->store_params['page'] = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
	 		$this->store_params['number_data'] = ($this->uri->segment(3)) ? $this->uri->segment(3)+1 : 1;
	       
			$row_properties = $get_properties->row();
			$get_data = $this->clm->get_data($config['per_page'],$this->store_params['page']);

			$this->store_params['pagination'] = $this->pagination->create_links();
			$this->store_params['title'] = $this->store_params['title2'] = $row_properties->rm_caption;
			$this->store_params['page_active'] = $row_properties->rm_caption;
			$this->store_params['page_icon'] = $row_properties->rm_icon;
			$this->store_params['data'] = $get_data->result_array();

			$this->view('certificate_legal_view');
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
			$this->store_params['source_top'] = array(
				'<link rel="stylesheet" href="'.front_url('assets/templates/admin').'/plugins/summernote/0.8.12/summernote.css">'
			);
			$this->store_params['source_bot'] = array(
				'<script src="'.front_url('assets/templates/admin').'/plugins/summernote/0.8.12/summernote.min.js"></script>',
				'<script src="'.front_url('assets/js/admin').'/certificate_legal.js"></script>'
			);
			
			$this->store_params['cond'] = ucwords($cond.' Certificate, Legal & Financial Strength');
			$this->store_params['dataicon'] = $this->clm->get_data_icon()->result_array();
			
			if($cond !== 'add')
			{
				$id = $this->uri->segment(4);
				$get_data_edit = $this->clm->get_data_edit($id);
				$this->store_params['data'] = $get_data_edit->row();
			}
			
			$this->view('certificate_legal_edit_view');
			
		}
		else
		{
			show_404();
		}
	}

	public function store_image()
	{
		if ($this->input->post('action') !== FALSE && $this->input->post('action') == 'store_image')
		{
			$config['upload_path'] = UPLOADPATH.'images'.DS.'tmp'.DS;
			$config['allowed_types'] = 'gif|jpg|jpeg|png';
			$config['remove_spaces']  = TRUE;
			$config['encrypt_name']  = TRUE;

			$this->load->library('upload', $config);

			if ( ! $this->upload->do_upload('image'))
			{
				print(json_encode(array(
					'success' => false,
					'msg' => $this->upload->display_errors()
				)));
			}
			else
			{
				$data = $this->upload->data();

				print(json_encode(array(
					'success' => true,
					'url' => front_url('assets/images/tmp/'.$data['file_name'])
				)));
			}
		}
		else exit('You can\'t access this page!');
	}

	public function input_action()
	{
		$upload_dir = str_replace('npanel'.DIRECTORY_SEPARATOR,'' , FCPATH);
	
		$config['upload_path'] = $upload_dir."assets".DIRECTORY_SEPARATOR."images".DIRECTORY_SEPARATOR."compro";
        $config['allowed_types'] ='gif|jpg|png';

	    $datas['caption'] = $this->input->post('txt_caption');
	  	$datas['description'] = $this->input->post('txt_desc');
        $datas['seq'] = $this->input->post('txt_seq');
        $datas['icon'] = $this->input->post('txt_icon');
		$datas['is_active'] = $this->input->post('txt_status');
        
             	
       	$this->load->library('upload',$config);

		if( ! empty($this->input->post('txt_id_company_legal')))
		{
			$old_img = substr($this->input->post('txt_img_old'), 26);

			if($this->upload->do_upload('txt_img'))
			{
				$data = array('upload_data' => $this->upload->data());

	            $image_name	 = $data['upload_data']['file_name']; 
	            $datas['img'] = 'assets/images/compro/'.$image_name; 

	            $id = $this->input->post('txt_id_company_legal');

	            $result = $this->clm->do_update($datas,$id);

	            if($old_img !== 'legal-default.png')
	            {
	            	unlink($config['upload_path'].DIRECTORY_SEPARATOR.$old_img);
	            }

	            echo json_encode(array(
	            	"status" => $result,
	            	"url" => base_url('certificate_legal')
	            ));
			}
			else
			{
	            $id = $this->input->post('txt_id_company_legal');
	            
	            $result = $this->clm->do_update($datas,$id);

	            echo json_encode(array(
	            	"status" => $result,
	            	"url" => base_url('certificate_legal')
	            ));
			}

		}
		else
		{	        
	        if($this->upload->do_upload('txt_img')){
	            $data = array('upload_data' => $this->upload->data());	 
	            $image_name	 = $data['upload_data']['file_name']; 
	            $datas['img'] = 'assets/images/compro/'.$image_name; 

	            $result = $this->clm->do_upload($datas);

	            echo json_encode(array(
	            	"status" => $result,
	            	"url" => base_url('certificate_legal')
	            ));
	        }
	        else
	        {
	        
	            $datas['img'] = 'assets/images/compro/legal-default.png';

	            $result = $this->clm->do_upload($datas);

	            echo json_encode(array(
	            	"status" => $result,
	            	"url" => base_url('certificate_legal')
	            ));
	        }
		}
  
	}

	public function delete()
	{
		$id = $this->uri->segment(3);

		$get_category = $this->clm->get_data_edit($id)->row();
		
		$datas['id'] = $get_category->id;
        $datas['caption'] = $get_category->category_name;
        $datas['is_active'] = $get_category->is_active;
        $datas['type'] = $get_category->type;
      
		$deletecategory = $this->clm->delete($datas,$id);
		redirect(base_url('certificate_legal'), 'refresh');
	}
}