<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package Koperasi Bintang tanjuang Madani
 * @copyright Koperasi Bintang tanjuang Madani
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /D/xampp/htdocs/iwebebs/application/module_frontend/services/controllers/services.php
 */

class Underconstruction extends MY_Controller {
	function __construct()
	{
		parent::__construct();
		
	}

	public function index()
	{
		// $this->store_params = array(
		// 	"services" => $this->load_services($id),
		// 	"slider" => $this->load_slider($id)
		// );

		$this->load->view('underconstruction_view');
	}

	public function load_services($id)
	{
		$services = $this->sm->load_services($id)->result();
		return $services;
	}
	
	public function load_slider($id)
	{
		$slider = $this->sm->load_slider('menu',$id)->row();
		
		return $slider;
	}

	public function service()
	{
		$url =  $this->uri->segment(1).'/'.$this->uri->segment(2).'/'.$this->uri->segment(3);
		
		$get_menu_id = $this->sm->get_menu($url)->row();
		
		$this->index($get_menu_id->id);
	}

}