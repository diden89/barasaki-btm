<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends MY_Controller {
	function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$this->store_params = array(
			'slide' => $this->load_slide(),
			'services' => $this->load_services(),
			'projects' => $this->load_projects(),
			'products' => $this->load_products(),
			'get_news' => $this->load_news(),
			'team' => $this->load_team(),
			'company_legal' => $this->load_company_legal(),
			"captcha" => $this->get_captcha('idx'),
			'source_bot' => array(
				'<script type="text/javascript" src="'.base_url().'assets/js/frontend/all_cond.js"></script>',
				
			)
		);

		$this->view('home_view');
	}

	public function load_slide()
	{
		$get_slide = $this->db_home->get_slide();
		$row_slide = $get_slide->result();

		foreach ($row_slide as $k => $v)
		{
			$v->title = ucwords(strtolower($v->title));
			$v->description = ucwords(strtolower($v->description));
		}

		return $row_slide;
	}

	public function load_services()
	{
		$get_services = $this->db_home->get_services();
		$row_services = $get_services->result();

		foreach ($row_services as $k => $v)
		{
			$v->caption = ucwords(strtolower($v->caption));
			$v->description = ucwords(strtolower($v->description));
		}
		
		return $row_services;
	}

	public function load_projects()
	{
		$get_projects = $this->db_home->get_projects();
		$row_projects = $get_projects->result();

		foreach ($row_projects as $k => $v)
		{
			$v->project_name = ucwords(strtolower($v->project_name));
		}

		return $row_projects;
	}

	public function load_team()
	{
		$get_team = $this->db_home->get_team();
		$row_team = $get_team->result();

		foreach ($row_team as $k => $v)
		{
			$v->fullname = ucwords(strtolower($v->fullname));
			$v->position = ucwords(strtolower($v->position));
		}

		return $row_team;
	}

	public function load_news()
	{
		$get_news = $this->db_home->get_news();
		$row_news = $get_news->result();
		
		return $row_news;
	}

	public function load_products()
	{
		$get_prd = $this->db_home->get_products();
		$row_prd = $get_prd->result();

		// print_r($row_prd);
		// exit;
		return $row_prd;
	}

	public function load_company_legal()
	{
		$get_cmp_lgl = $this->db_home->get_company_legal();
		$row_cmp_lgl = $get_cmp_lgl->result();

		// print_r($row_prd);
		// exit;
		return $row_cmp_lgl;
	}

	public function send_message()
	{
		date_default_timezone_set("Asia/Jakarta");
		
		$msg = array(
			"first_name" => strip_tags($this->input->post('fname')),
			"last_name" => strip_tags($this->input->post('lname')),
			"field" => strip_tags($this->input->post('bidang')),
			"content" => strip_tags($this->input->post('content')),
			"phone" => strip_tags($this->input->post('no_telp')),
			"date" => date('Y-m-d H:i:s')
		);
		// print_r($msg);
		// exit;

		$insert = $this->db_home->input_data('offering',$msg);

		echo json_encode(array(
        	"status" => $insert,
        	"url" => base_url('home'),
        	"msg" => 'Sukses mengirim penawaran'
       	));
	

	}

	public function get_captcha($idx="")
	{
		$vals = array(
            'img_path'	 => './assets/captcha/',
            'img_url'	 => base_url().'assets/captcha/',
            'img_width'	 => '200',
            'img_height' => 50,

            'border' => 30, 
            'expiration' => 7200,
            'colors'     => array(
                'background' => array(255, 255, 255),
                'border' => array(255, 255, 255),
                'text' => array(197, 3, 163),
                'grid' => array(42, 210, 252)
        	)
        );

        // create captcha image
        $cap = create_captcha($vals);
       
       	//$this->session->set_userdata('mycaptcha', $cap['word']);

       	if($idx === 'idx')
       	{
       		$data = (object)[
	       		'image' => $cap['image'],
	       		'word' => $cap['word']
       		];
       		return $data;
       	}
       	else
       	{
       		echo json_encode(array(
        	"image" => $cap['image'],
        	"word" => $cap['word'],
       	));
       	}
	}
}