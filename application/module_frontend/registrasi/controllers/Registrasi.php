<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package Koperasi Bintang tanjuang Madani
 * @copyright Koperasi Bintang tanjuang Madani
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /bintangtanjuangmadani/application/module_frontend/project/controllers/Registrasi.php
 */

class Registrasi extends MY_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model("registrasi_model","rm");

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
					'<script type="text/javascript" src="'.base_url().'assets/js/frontend/registrasi/registrasi.js"></script>',
					
				)
			);

			$this->view('registrasi_view');
		}
		else
		{
			$this->store_params = array(
				'source_bot' => array(
					'<script type="text/javascript" src="'.base_url().'assets/js/frontend/registrasi/registrasi.js"></script>',
					
				)
			);
			$this->view('registrasi_view');
			// show_404();
		}
	}

	public function do_register()
	{
		// print_r($_FILES);exit;

		$upload_dir = str_replace('npanel'.DIRECTORY_SEPARATOR,'' , FCPATH);
		$post = $this->input->post();

		$config['upload_path'] = $upload_dir."assets".DIRECTORY_SEPARATOR."images".DIRECTORY_SEPARATOR."registrasi";
        $config['allowed_types'] ='gif|jpg|png|jpeg|ico|pdf|doc';
       
        $datas['ur_fullname'] = $post['fullname'];
        $datas['ur_nik'] = $post['nik_ktp'];
        $datas['ur_place_birth'] = $post['place_of_birth'];
        $datas['ur_date_birth'] = date('Y-m-d', strtotime($post['birthdate']));
        $datas['ur_address'] = $post['address'];
        $datas['ur_occupation'] = $post['occupation'];
        $datas['ur_phone'] = $post['phone'];
        $datas['ur_email'] = $post['email'];
        
        $cek_no_reg = $this->rm->cek_no_reg();

		if($cek_no_reg->num_rows() > 0)
		{
			$notrx = $cek_no_reg->row();
			$last_notrx = $notrx->notrx + 1;
		}
		else
		{
			$last_notrx = 1;
		}

		$datas['ur_no_reg'] = sprintf('%08d',$last_notrx);

		$this->load->library('upload',$config);

			// upload KTP
		if($this->upload->do_upload('upload_ktp'))
		{
			$data_ktp = array('upload_data' => $this->upload->data());

            $image_name	 = md5($data_ktp['upload_data']['file_name']); 
            $datas['ur_url_ktp'] = 'assets/images/registrasi/'.$image_name; 
		}

		//upload selfie

		if($this->upload->do_upload('upload_selfie'))
		{
			$data_selfie = array('upload_data' => $this->upload->data());

            $image_name	 = md5($data_selfie['upload_data']['file_name']); 
            $datas['ur_url_selfie'] = 'assets/images/registrasi/'.$image_name; 
		}

		//upload kartu keluarga

		if($this->upload->do_upload('upload_kk'))
		{
			$data_kk = array('upload_data' => $this->upload->data());

            $image_name	 = md5($data_kk['upload_data']['file_name']); 
            $datas['ur_url_kk'] = 'assets/images/registrasi/'.$image_name;
		}

		$result = $this->rm->do_upload($datas);

		echo json_encode(array(
			"status" => $result,
			"url" => base_url('registrasi/daftar_anggota')
		));
  
	}

	public function daftar_anggota()
	{

		$get_data = $this->rm->get_data_anggota();

		$this->store_params = array(
			'data' => $get_data->result_array(),
			'source_bot' => array(
				'<script type="text/javascript" src="'.base_url().'assets/js/frontend/registrasi/registrasi.js"></script>',
				
			)
		);

		$this->view('daftar_anggota_view');
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

		$insert = $this->rm->input_data('message',$msg);

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