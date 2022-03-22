<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package Koperasi Bintang tanjuang Madani
 * @copyright Koperasi Bintang tanjuang Madani
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /bintangtanjuangmadani/application/module_frontend/Company_profile/controllers/Company_profile.php
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
			"company_profile" => $this->cpm->get_data()->result(),
			// "header" => $this->db_home->load_header_page($url)->row(),
			'source_top' => array(
				'<link rel="stylesheet" href="'.base_url('assets/templates/other').'/owl.carousel/owl.carousel.css">',
				'<link rel="stylesheet" href="'.base_url().'/assets/css/other.css">'
				
			),
			'source_bot' => array(
				'<script type="text/javascript" src="'.base_url().'assets/js/frontend/all_cond.js"></script>',
				'<script type="text/javascript" src="'.base_url().'assets/templates/other/owl.carousel/owl.carousel.min.v2f1e4.js"></script>',
				
			)
		);

		$this->view('company_profile_view');
	}
}