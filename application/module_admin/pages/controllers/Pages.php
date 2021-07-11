<?php
/*!
 * @package PT. Barasaki Sinergi Semesta
 * @copyright PT. Barasaki Sinergi Semesta
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /barasaki-btm/application/module_admin/Pages/controllers/Pages.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Pages extends MY_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model('Pages_model','am');
	}

	public function index()
	{
		$get_properties = $this->db_home->get_properties($this->uri->segment(1));
		// print_r($get_properties->row());exit;
		if ($get_properties && $get_properties->num_rows() > 0)
		{	

			$row_properties = $get_properties->row();
			$get_data = $this->am->get_data();

			$this->store_params['title'] = $this->store_params['title2'] = $row_properties->rm_caption;
			$this->store_params['page_active'] = $row_properties->rm_caption;
			$this->store_params['page_icon'] = $row_properties->rm_icon;
			$this->store_params['data'] = $get_data->result_array();
			$this->store_params['source_top'] = array(
				'<link rel="stylesheet" href="'.front_url('assets/templates/admin').'/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">'
			);
			$this->store_params['source_bot'] = array(
				'<script src="'.front_url('assets/js/admin/pages').'/pages.js"></script>',
				'<script src="'.front_url('assets/templates/admin').'/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>',
				'<script src="'.front_url('assets/templates/admin').'/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>',
				'<script> function delete_data(delete_url){$("#deleteModal").modal("show", {backdrop: "static"});
      			document.getElementById("deletePages").setAttribute("href" , delete_url);
    			}</script>'
			);

			// $this->view('modal_projects');
			$this->view('pages_view');
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
			$upload_dir = str_replace('npanel'.DIRECTORY_SEPARATOR,'' , FCPATH);		
			$config['upload_path'] = $upload_dir."assets".DIRECTORY_SEPARATOR."images".DIRECTORY_SEPARATOR."tmp";

			// $config['upload_path'] = UPLOADPATH.'images'.DS.'tmp'.DS;
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

			$this->store_params['title'] = $this->store_params['title2'] = $row_properties->rm_caption;
			$this->store_params['page_active'] = $row_properties->rm_caption;
			$this->store_params['page_icon'] = $row_properties->rm_icon;
			$this->store_params['source_top'] = array(
				'<link rel="stylesheet" href="'.front_url('assets/templates/admin').'/plugins/summernote/0.8.12/summernote.css">'
			);
			$this->store_params['source_bot'] = array(
				'<script src="'.front_url('assets/templates/admin').'/plugins/summernote/0.8.12/summernote.min.js"></script>',
				'<script src="'.front_url('assets/js/admin').'/pages.js"></script>'
			);
			
			$this->store_params['cond'] = ucwords($cond).' Pages';
			$this->store_params['category'] = $this->am->get_category()->result_array();
			$this->store_params['datamenu'] = $this->am->get_menu('N')->result_array();
			// print_r($this->store_params['datamenu']);exit;
			if($cond !== 'add')
			{
				$id = $this->uri->segment(4);
				$get_data_edit = $this->am->get_data_edit($id);
				$this->store_params['data'] = $get_data_edit->row();
			}
			
			$this->view('pages_input_view');
			
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
      	
       	$id = $this->input->post('txt_id_pages');
       
       	if( ! empty($id))
       	{
       		$result = $this->am->do_update($datas,$id);

   		  	echo json_encode(array(
            	"status" => $result,
            	"url" => base_url('pages')
            ));
       	}
       	else
       	{
       		$result = $this->am->do_upload($datas);
            echo json_encode(array(
            	"status" => $result,
            	"url" => base_url('pages')
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