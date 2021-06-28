<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package PT. Barasaki Sinergi Semesta
 * @copyright PT. Barasaki Sinergi Semesta
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /barasaki-btm/application/module_frontend/Company_profile/controllers/Company_profile.php
 */

class Company_profile extends MY_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model("company_profile_model","cpm");

	}

	public function index()
	{
		$url =  $this->uri->segment(1);		

		$this->store_params = array(
			// "company_profile" => $this->cpm->get_data(),
			// "header" => $this->db_home->load_header_page($url)->row(),
			'source_bot' => array(
				'<script type="text/javascript" src="'.base_url().'assets/js/frontend/all_cond.js"></script>',
				
			)
		);

		$this->view('company_profile_view');
	}
}