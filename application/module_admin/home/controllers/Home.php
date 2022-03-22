<?php
// echo phpinfo();
// exit;
/*!
 * @package Koperasi Bintang Tanjung Madani
 * @copyright Koperasi Bintang Tanjung Madani
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /bintangtanjungmadani/application/module_admin/home/controllers/home.php
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

	public function get_new_message()
	{
		$view = $this->input->post('view');
		$output = "";
		if($view != '')
		{
			// $upd = $this->pm->update_message();
		}
		else
		{
			$get_message = $this->hm->get_message();
			if($get_message->num_rows() > 0)
			{
				$total_new_msg = $get_message->num_rows();
				$output .= '<li class="header">You have '.$total_new_msg.' messages</li>';
				foreach($get_message->result() as $g => $m)
				{
					date_default_timezone_set("Asia/Jakarta");
					$awal1  = date('Y-m-d h:i:sa',strtotime($m->date)); //waktu awal
					$akhir2 = date('Y-m-d h:i:sa',strtotime(date('Y-m-d h:i:sa'))); //waktu akhir
					$awal = strtotime($awal1);
					$akhir = strtotime($akhir2);
					$diff  = $akhir - $awal;
					$jam   = floor($diff / (60 * 60));
					$menit = $diff - $jam * (60 * 60);
					
					if($jam > 24)
					{
						$time = 'Yesterday';
					}
					elseif($diff / (60 * 60) > 1)
					{
						$time = 'Today';
					}
					else
					{
						$time = $jam .' jam, ' . floor( $menit / 60 ) . ' menit';
					}
					$output .= '
							   <li>
							   <ul class="menu">
							   <li>
			                    <a href="'.base_url('message/show_msg/'.$m->id).'">
			                      <div class="pull-left">
			                        <img src="'.base_url("assets/images/compro/user_message.png").'" class="img-circle" alt="User Image">
			                      </div>
			                      <h4>
			                        '.$m->first_name.' '.$m->last_name.'
			                        <small><i class="fa fa-clock-o"></i> '.$time.'</small>
			                      </h4>
			                      <p>'.$m->subject.'</p>
			                    </a>
			                  </li>
			                  </ul>
			                  </li>
							   ';
				}
				$output   .= '<li class="footer"><a href="'.base_url('/admin/message').'">See All Messages</a></li>';
			}
			else
			{
				 $output .= '
   						  <li class="footer"><a href="#">Tidak ada pesan baru</a></li>';
			}
			
			$data = array(
			    'notification' => $output,
			    'unseen_notification'  => $get_message->num_rows()
			);

			echo json_encode($data);
		}
	}
}