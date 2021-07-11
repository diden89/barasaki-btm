<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package PT. Barasaki Sinergi Semesta
 * @copyright PT. Barasaki Sinergi Semesta
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

		$uri2 = $this->uri->segment(1).'/'.$this->uri->segment(2).'/'.$this->uri->segment(3);

		$get_properties = $this->db_home->get_properties($uri2);

		if ($get_properties && $get_properties->num_rows() > 0)
		{			
			$row_properties = $get_properties->row();

			$this->store_params = array(
				"title" => $this->store_params['title2'] = $row_properties->rm_caption,
				"page_active" => $row_properties->rm_caption,
				"slider" => $this->load_slider($link2),
				"pages" => $this->load_article($menu->id),
			);
			if($link == 'about_us')
			{
				$this->store_params['customer'] =$this->pam->get_data_customer()->result();
				$this->store_params['team'] =$this->pam->get_data_employee()->result();
			}

			$this->view('pages_view');
		}
		else
		{
			show_404();
		}
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