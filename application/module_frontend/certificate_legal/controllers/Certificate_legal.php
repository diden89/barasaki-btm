<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package Barasaki Semesta
 * @copyright Barasaki Semesta
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /D/xampp/htdocs/iwebebs/application/module_frontend/services/controllers/services.php
 */

class Certificate_legal extends MY_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model("certificate_legal_model","sm");
	}

	public function index()
	{
		$url = $this->uri->segment(1);
		$this->store_params = array(
			"company_legal" => $this->load_certificate($id=""),
			"slider" => $this->load_slider('menu',$url)
		);

		$this->view('certificate_legal_view');
	}

	public function detail($id)
	{
		$url = $this->uri->segment(1);
		$this->store_params = array(
			"company_legal" => $this->load_certificate($id),
			"company_legal_all" => $this->load_certificate($id=""),
			"slider" => $this->load_slider('menu',$url)
		);

		$this->view('certificate_legal_detail_view');
	}
	

	public function load_certificate($id)
	{
		$detail = $this->sm->load_certificate($id)->result();
		return $detail;
	}
	
	public function load_slider($table,$id)
	{
		$slider = $this->sm->load_slider($table,$id)->row();
		return $slider;
	}

}