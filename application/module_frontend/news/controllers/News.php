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

class News extends MY_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model("news_model","nm");
		// $this->load->model("services/services_model","sm");
	}

	public function index($id="")
	{
		$url = $this->uri->segment(1);
	
		$this->store_params = array(
			"berita" => $this->load_news(""),
			"header" => $this->db_home->load_header_page($url)->row()
		);
		
		$this->view('news_view');
	}

	public function load_news($id="")
	{
		$get_news = $this->db_home->get_news($id);
		if( ! empty($id))
		{
			$row_news = $get_news->row();
			// echo ($row_news->title);exit;
		}
		else
		{
			$row_news = $get_news->result();
			// echo count($row_news);exit;
		}

		return $row_news;
	}

	public function load_slider($link)
	{
		$slider = $this->nm->load_slider('menu',$link)->result_array();
		
		return $slider;
	}

	public function show_news($id)
	{
		$url = $this->uri->segment(1);

		$get_last_count_read = $this->nm->get_count_read($id)->result();
		foreach($get_last_count_read as $g => $l)
		{
			$upd = $this->nm->update_data("news",array('count_read' => $l->count_read+1),array('id' => $id));
		}

		$this->store_params = array(
			"berita" => $this->load_news($id),
			"popular_news" => $this->nm->popular_news()->result(),
			"header" => $this->db_home->load_header_page($url)->row(),
			"category" => $this->nm->get_category('news')->result()
		);

		// $this->view('search_news');
		$this->view('detail_news_view');
	}

	public function category($id)
	{
		$url = $this->uri->segment(1);

		$this->store_params = array(
			"category_news" => $this->nm->load_news_by_category($id)->result(),
			"popular_news" => $this->nm->popular_news()->result(),
			"header" => $this->db_home->load_header_page($url)->row(),
			"category" => $this->nm->get_category('news')->result()
		);

		$this->view('search_news');
	}

}