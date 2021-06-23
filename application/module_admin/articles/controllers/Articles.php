<?php
/*!
 * @package Barasaki Semesta
 * @copyright Barasaki Semesta
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /barasaki-btm/application/module_admin/about_us/controllers/About_us.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Articles extends MY_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model('articles_model','am');
		$this->load->library('pagination');
	}

	public function index()
	{
		$get_properties = $this->db_home->get_properties($this->uri->segment(1));

		if ($get_properties && $get_properties->num_rows() > 0)
		{	
			$total_data =  $this->am->get_data($limit = "",$start = "")->num_rows();
			//pagination
			//konfigurasi pagination

	        $config['base_url'] = base_url('category/index'); //site url
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
			$get_data = $this->am->get_data($config['per_page'],$this->store_params['page']);

			$this->store_params['pagination'] = $this->pagination->create_links();
			$this->store_params['title'] = $this->store_params['title2'] = $row_properties->caption;
			$this->store_params['page_active'] = $row_properties->caption;
			$this->store_params['page_icon'] = $row_properties->icon;
			$this->store_params['data'] = $get_data->result_array();

			$this->store_params['source_bot'] = array(
				'<script src="'.front_url('assets/js/admin').'/articles.js"></script>',
				'<script> function delete_data(delete_url){$("#deleteModal").modal("show", {backdrop: "static"});
      			document.getElementById("deleteArticles").setAttribute("href" , delete_url);
    			}</script>'
			);

			// $this->view('modal_projects');
			$this->view('articles_view');
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
	
	public function cu_action($cond)
	{
		$get_properties = $this->db_home->get_properties($this->uri->segment(1));

		if ($get_properties && $get_properties->num_rows() > 0)
		{	
			$row_properties = $get_properties->row();

			$this->store_params['title'] = $this->store_params['title2'] = $row_properties->caption;
			$this->store_params['page_active'] = $row_properties->caption;
			$this->store_params['page_icon'] = $row_properties->icon;
			$this->store_params['source_top'] = array(
				'<link rel="stylesheet" href="'.front_url('assets/templates/admin').'/plugins/summernote/0.8.12/summernote.css">'
			);
			$this->store_params['source_bot'] = array(
				'<script src="'.front_url('assets/templates/admin').'/plugins/summernote/0.8.12/summernote.min.js"></script>',
				'<script src="'.front_url('assets/js/admin').'/articles.js"></script>'
			);
			
			$this->store_params['cond'] = ucwords($cond).' Articles';
			$this->store_params['category'] = $this->am->get_category()->result_array();
			$this->store_params['datamenu'] = $this->am->get_menu('N')->result_array();
			// print_r($this->store_params['datamenu']);exit;
			if($cond !== 'add')
			{
				$id = $this->uri->segment(4);
				$get_data_edit = $this->am->get_data_edit($id);
				$this->store_params['data'] = $get_data_edit->row();
			}
			
			$this->view('articles_input_view');
			
		}
		else
		{
			show_404();
		}
	}

	public function input_action()
	{
	    $datas['title'] = $this->input->post('txt_title');
	    $datas['category_id'] = $this->input->post('txt_category');
	    $datas['menu_id'] = $this->input->post('txt_menu');
	    $datas['content'] = $this->input->post('txt_content');
	    $datas['url'] = $this->input->post('txt_url');
        $datas['is_active'] = $this->input->post('txt_status');
      	
       	$id = $this->input->post('txt_id_articles');
       
       	if( ! empty($id))
       	{
       		$result = $this->am->do_update($datas,$id);

   		  	echo json_encode(array(
            	"status" => $result,
            	"url" => base_url('articles')
            ));
       	}
       	else
       	{
       		$result = $this->am->do_upload($datas);
            echo json_encode(array(
            	"status" => $result,
            	"url" => base_url('articles')
            ));
       	}
  
	}

	public function delete()
	{
		$id = $this->uri->segment(3);

		$get_category = $this->am->get_data_edit($id)->row();
		
		$datas['id'] = $get_category->id;
        $datas['category_name'] = $get_category->category_name;
        $datas['is_active'] = $get_category->is_active;
        $datas['type'] = $get_category->type;
      
		$deletecategory = $this->am->delete($datas,$id);
		redirect(base_url('category'), 'refresh');
	}
}