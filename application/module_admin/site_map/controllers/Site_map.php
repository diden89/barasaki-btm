<?php
/*!
 * @package PT. Barasaki Sinergi Semesta
 * @copyright PT. Barasaki Sinergi Semesta
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /barasaki-btm/application/module_admin/Site_map/controllers/Site_map.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Site_map extends MY_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model('Site_map_model','smm');
	}

	public function index()
	{
		$get_properties = $this->db_home->get_properties($this->uri->segment(1));

		if ($get_properties && $get_properties->num_rows() > 0)
		{	

			$row_properties = $get_properties->row();
			$get_data = $this->smm->get_data();
			$this->store_params['title'] = $this->store_params['title2'] = $row_properties->rm_caption;
			$this->store_params['page_active'] = $row_properties->rm_caption;
			$this->store_params['page_icon'] = $row_properties->rm_icon;
			$this->store_params['data'] = $get_data->result_array();
			$this->store_params['source_top'] = array(
				'<link rel="stylesheet" href="'.front_url('assets/templates/admin').'/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">'
			);
			$this->store_params['source_bot'] = array(
				'<script src="'.front_url('assets/templates/admin').'/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>',
				'<script src="'.front_url('assets/templates/admin').'/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>',
				'<script src="'.front_url('assets/js/admin/site_map/').'/site_map.js"></script>',
				'<script> function deletedata(delete_url){$("#deleteModal").modal("show", {backdrop: "static"});
      			document.getElementById("deleteData").setAttribute("href" , delete_url);
    			}</script>'
			);
			$this->view('site_map_view');
		}
		else
		{
			show_404();
		}
	}

	public function search_data()
	{
		prin_r($_POST);exit;
		$this->index($_POST);
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
				'<script src="'.front_url('assets/js/admin/site_map/').'/site_map_form.js"></script>',

			);
			
			$this->store_params['cond'] = ucwords($cond).' site_map';
			// $this->store_params['datasite_map'] = $this->smm->get_site_map()->result_array();
			
			$this->store_params['url_target'] = $this->smm->get_data_target()->result();
			if($cond !== 'add')
			{
				$id = $this->uri->segment(4);
				$get_data_edit = $this->smm->get_data_edit($id);
				$this->store_params['data'] = $get_data_edit->row();
			}
			
			$this->view('site_map_input_view');
			
		}
		else
		{
			show_404();
		}
	}

	public function input_action()
	{
		$id = $this->input->post('txt_id');
		$datas['caption'] = $this->input->post('txt_caption');
	    $datas['url'] = $this->input->post('txt_url');        
	    $datas['ut_id'] = $this->input->post('txt_url_target');        
        $datas['is_active'] = $this->input->post('txt_status');
      	
      	if( ! empty($this->input->post('txt_id')))
		{
            $result = $this->smm->do_update($datas,$id);

            echo json_encode(array(
            	"status" => $result,
            	"url" => base_url('site_map')
            ));
		}
		else
		{
			$result = $this->smm->do_upload($datas);

            echo json_encode(array(
            	"status" => $result,
            	"url" => base_url('site_map')
            ));
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
	
	public function delete()
	{
		$id = $this->uri->segment(3);

		$get_data = $this->smm->get_data_edit($id)->row();
		
		$datas['id'] = $get_data->id;
		$datas['ut_id'] = $get_data->ut_id;
        $datas['caption'] = $get_data->caption;
        $datas['is_active'] = $get_data->is_active;
        $datas['url'] = $get_data->url;
      
		$deletedata = $this->smm->delete($datas,$id);
		redirect(base_url('site_map'), 'refresh');
	}
}