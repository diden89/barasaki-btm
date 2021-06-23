<?php
// echo phpinfo();
// exit;
/*!
 * @package Iwebebs
 * @copyright PT Iwebe Bangun Solusi
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /iwebebs/application/module_admin/home/controllers/home.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends MY_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model('home_model','hm');
		
	}

	public function index()
	{

		$get_total_product = $this->hm->get_total('products')->result_array();
		$get_total_project = $this->hm->get_total('projects')->result_array();
		$get_total_team = $this->hm->get_total('employee')->result_array();
		$get_total_services = $this->hm->get_total('services')->result_array();

		foreach($get_total_product as $ttl)
		{
			$this->store_params['total_product'] = $ttl['total'];
		}
		foreach($get_total_project as $ttl)
		{
			$this->store_params['total_project'] = $ttl['total'];
		}
		foreach($get_total_team as $ttl)
		{
			$this->store_params['total_team'] = $ttl['total'];
		}
		foreach($get_total_services as $ttl)
		{
			$this->store_params['total_services'] = $ttl['total'];
		}
		
		$this->store_params['source_bot'] = array(
				'<script src="'.front_url('assets/templates/admin').'/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>',
				'<script src="'.front_url('assets/js/admin').'/home.js"></script>',
				
			);
		
		$this->view('home_view');
	}

	public function send_email()
	{
		$config['protocol'] = "smtp";
		$config['smtp_host'] = "info@iwebebs.com";
		$config['smtp_port'] = "465";
		$config['smtp_user'] = "info@iwebebs.com";
		$config['smtp_pass'] = "P@ssw0rd";
		$config['charset'] = "utf-8";
		$config['mailtype'] = "html";
		$config['newline'] = "\r\n";

		$this->load->library('email',$config);
		$this->email->from('info@iwebebs.com', 'PT. Iwebe Bangun Solusi');
		$email_to = explode(';', $this->input->post('emailto'));
		$this->email->to($email_to);
		$this->email->subject($this->input->post('subject'));
		$this->email->message(strip_tags($this->input->post('txt_content')));
		if ($this->email->send()) {
			 echo ('<script>
				    window.alert("Email Send..");
				    window.location.href="'.base_url().'";
				    </script>');
		} else {
		echo ('<script>
		    window.alert("Email Failed..");
		    window.location.href="'.base_url().'";
		    </script>');
		}
	}
}