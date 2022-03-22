<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package Koperasi Bintang Tanjung Madani
 * @copyright Koperasi Bintang Tanjung Madani
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /D/xampp/htdocs/iwebebs/application/module_frontend/services/controllers/services.php
 */

class About_us extends MY_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model("about_us_model","aum");
		// $this->load->model("services/services_model","sm");
	}

	public function index()
	{
		$link = $this->uri->segment(1);
		
		$this->store_params = array(
			"slider" => $this->load_slider($link),
			"about_us" => $this->load_article(),
		);

		$this->view('about_us_view');
	}

	public function load_article()
	{
		$article = $this->aum->load_article()->result_array();
		// print_r($news);exit;
		return $article;
	}

	public function load_slider($link)
	{
		$slider = $this->aum->load_slider('menu',$link)->result_array();

		return $slider;
	}

}