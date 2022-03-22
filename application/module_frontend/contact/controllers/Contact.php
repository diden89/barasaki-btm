<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package Koperasi Bintang tanjuang Madani
 * @copyright Koperasi Bintang tanjuang Madani
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /bintangtanjuangmadani/application/module_frontend/project/controllers/project.php
 */

class Contact extends MY_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model("contact_model","cm");

	}

	public function index()
	{
		$url =  $this->uri->segment(1);		

		$get_properties = $this->db_home->get_properties($url);

		if ($get_properties && $get_properties->num_rows() > 0)
		{			
			$row_properties = $get_properties->row();
			$this->store_params = array(
				"title" => $this->store_params['title2'] = $row_properties->rm_caption,
				"page_active" => $row_properties->rm_caption,
				"contact" => $this->load_footer(),
				"header" => $this->db_home->load_header_page($url)->row(),
				"captcha" => $this->get_captcha("idx"),
				'source_bot' => array(
					'<script type="text/javascript" src="'.base_url().'assets/js/frontend/all_cond.js"></script>',
					
				)
			);

			$this->view('contact_view');
		}
		else
		{
			show_404();
		}
	}

	public function send_message()
	{
		date_default_timezone_set("Asia/Jakarta");
		
		$msg = array(
			"first_name" => $this->input->post('fname'),
			"last_name" => $this->input->post('lname'),
			"email" => $this->input->post('email'),
			"subject" => $this->input->post('subject'),
			"text" => $this->input->post('message')
		);
		// print_r($msg);
		// exit;

		$insert = $this->cm->input_data('message',$msg);

		echo json_encode(array(
        	"status" => $insert,
        	"url" => base_url('contact'),
        	"msg" => 'Message Has Been Send'
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

	function generate_pdf()
	{
	    $doc = new Docx_reader();
	    $doc->setFile('testDoc3.docx');

	    $plain_text = $doc->to_plain_text();
	    $html = $doc->to_html();

	    $pdf = pdf_create($html, 'testDoc4', false);
	    $len = strlen($pdf);
	    header("Content-type: application/pdf");
	    header("Content-Length:" . $len);
	    header("Content-Disposition: inline; filename=Resume.pdf");
	    print $pdf;
	} 
}