<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package Koperasi Bintang tanjuang Madani
 * @copyright Koperasi Bintang tanjuang Madani
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /bintangtanjuangmadani/application/module_frontend/project/controllers/project.php
 * mengerjakan fiter view untuk project
 */

class Project extends MY_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model("project/project_model","pm");
		
	}

	public function index()
	{
		$link = $this->uri->segment(1);
		
		$this->store_params = array(
			"project" => $this->pm->load_project()->result(),
			"category"  => $this->load_category(),
			"slider" => $this->load_slider($link),
		);

		$this->view('project_view');
	}

	public function filter_data()
	{
		$action = $_REQUEST['action'];
		$data = array();
		$filter = $this->pm->load_project($action);

		if($filter->num_rows() > 0)
		{	
			$data['projects'] = $filter->result_array();
			echo $this->load->view('filter_view',$data);
		}
		else
		{
			echo $this->load->view('filter_view',$data);
		}
		
	}

	public function load_category()
	{
		$this->load->model("products/products_model","prm");
		$category = $this->prm->load_category('category','services')->result_array();

		return $category;
	}

	public function load_detail_project()
	{
		$project = $this->pm->load_project('show-all')->result_array();

		return $project;
	}

	public function load_slider($link)
	{
		$slider = $this->pm->load_slider($link)->row();

		return $slider;
	}
}