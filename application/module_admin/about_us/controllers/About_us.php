<?php
/*!
 * @package PT. Barasaki Sinergi Semesta
 * @copyright PT. Barasaki Sinergi Semesta
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /barasaki-btm/application/module_admin/about_us/controllers/About_us.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class About_us extends MY_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model('about_us_model','aum');
	}

	public function index()
	{
		$get_properties = $this->db_home->get_properties($this->uri->segment(1));

		if ($get_properties && $get_properties->num_rows() > 0)
		{
			$row_properties = $get_properties->row();
			$get_data = $this->aum->get_data();
			$this->store_params['title'] = $this->store_params['title2'] = $row_properties->caption;
			$this->store_params['page_active'] = $row_properties->caption;
			$this->store_params['page_icon'] = $row_properties->icon;
			$this->store_params['source_top'] = array(
				'<link rel="stylesheet" href="'.front_url('assets/templates/admin').'/plugins/summernote/0.8.12/summernote.css">'
			);
			$this->store_params['source_bot'] = array(
				'<script src="'.front_url('assets/templates/admin').'/plugins/summernote/0.8.12/summernote.min.js"></script>',
				'<script src="'.front_url('assets/js/admin').'/about_us.js"></script>'
			);
			$this->store_params['data'] = $get_data->row();

			$this->view('about_us_view');
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

	public function store_data()
	{
		if (isset($_POST['txt_title']) && isset($_POST['txt_content']))
		{
			$store_data = $this->aum->store_data($this->input->post(NULL, TRUE));

			if ($store_data)
			{
				print(json_encode(array('success' => TRUE)));
			}
			else
			{
				print(json_encode(array('success' => FALSE)));
			}
		}
		else
		{
			show_404();
		}
	}
}