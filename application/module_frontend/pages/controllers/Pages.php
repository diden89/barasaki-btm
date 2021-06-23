<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package Iwebebs
 * @copyright PT Iwebe Bangun Solusi
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /D/xampp/htdocs/iwebebs/application/module_frontend/services/controllers/services.php
 */

class Pages extends MY_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model("pages_model","pam");
	}

	public function index($link="",$link2="")
	{
		$menu = $this->load_slider($link2);

		$this->store_params = array(
			"slider" => $this->load_slider($link2),
			"pages" => $this->load_article($menu->id),
		);

		$this->view('pages_view');
	}

	public function detail()
	{
		$link = $this->uri->segment(3);
		$linkslider = $this->uri->segment(1).'/'.$this->uri->segment(2).'/'.$this->uri->segment(3);
	
		$this->index($link,$linkslider);
	}

	public function load_article($id)
	{
		$article = $this->pam->load_article($id)->result_array();
		// print_r($news);exit;
		return $article;
	}

	public function load_slider($link)
	{
		$slider = $this->pam->load_slider('menu',$link)->row();

		return $slider;
	}

}