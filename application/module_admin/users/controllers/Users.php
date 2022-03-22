<?php
/*!
 * @package Koperasi Bintang tanjuang Madani
 * @copyright Koperasi Bintang tanjuang Madani
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /bintangtanjuangmadani/application/module_admin/about_us/controllers/About_us.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends MY_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model('users_model','um');
	}

	public function index()
	{
		$get_properties = $this->db_home->get_properties($this->uri->segment(1));

		if ($get_properties && $get_properties->num_rows() > 0)
		{	
	       	$row_properties = $get_properties->row();
			$get_data = $this->um->get_data();

			$this->store_params['title'] = $this->store_params['title2'] = $row_properties->rm_caption;
			$this->store_params['page_active'] = $row_properties->rm_caption;
			$this->store_params['page_icon'] = $row_properties->rm_icon;
			$this->store_params['source_top'] = array(
				'<link rel="stylesheet" href="'.front_url('assets/templates/admin').'/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">'
			);
			$this->store_params['source_bot'] = array(
				'<script src="'.front_url('assets/js/admin/users').'/users.js"></script>',
				'<script src="'.front_url('assets/templates/admin').'/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>',
				'<script src="'.front_url('assets/templates/admin').'/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>',
				'<script> function delete_data(delete_url){$("#deleteModal").modal("show", {backdrop: "static"});
      			document.getElementById("deleteusers").setAttribute("href" , delete_url);
    			}</script>',
    			'<script>
    				function showImage(img_src){
    					$("#mymodal").modal("show", {backdrop: "static"});
    					document.getElementById("img01").setAttribute("src" , img_src);
    					// document.getElementById("img01").setAttribute("width" , "500px");
    				}
    			</script>'
			);
			$this->store_params['data'] = $get_data->result_array();

			// $this->view('modal_projects');
			$this->view('users_view');
		}
		else
		{
			show_404();
		}
	}


	public function cu_action($cond)
	{
		$get_properties = $this->db_home->get_properties($this->uri->segment(1));

		if ($get_properties && $get_properties->num_rows() > 0)
		{	
			$row_properties = $get_properties->row();

			$this->store_params['title'] = $this->store_params['title2'] = $row_properties->rm_caption;
			$this->store_params['page_active'] = $row_properties->rm_caption;
			$this->store_params['page_icon'] = $row_properties->rm_icon;
			$this->store_params['source_top'] = array(
				'<link rel="stylesheet" href="'.front_url('assets/templates/admin').'/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">'
			);
			$this->store_params['source_bot'] = array(
				'<script src="'.front_url('assets/templates/admin').'/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>',
				'<script src="'.front_url('assets/js/admin/users/').'/users_form.js"></script>'
			);
			
			$this->store_params['sub_group'] = $this->um->get_data_for_select('user_sub_group')->result_array();
			$this->store_params['cond'] = ucwords($cond);
			// print_r($this->store_params['employee']);
			// exit;
			if($cond !== 'add')
			{
				$id = $this->uri->segment(4);
				$this->store_params['employee'] = $this->um->get_data_employee($id)->row();
				$get_data_edit = $this->um->get_data_edit($id);
				$this->store_params['data'] = $get_data_edit->row();
			}
			else
			{
				$this->store_params['employee'] = $this->um->get_data_for_select('employee')->result_array();
			}


			$this->view('users_input_view');
			
		}
		else
		{
			show_404();
		}
	}

	public function input_action()
	{
	    $datas['fullname'] = $this->input->post('txt_fullname');
	    $datas['ud_username'] = $this->input->post('txt_username');
        $datas['ud_password'] = sha1(strtoupper($this->input->post('txt_username').':'.$this->input->post('txt_password')));
        // $datas['ori_password'] = $this->input->post('txt_password');
       	$datas['ud_sub_group'] = $this->input->post('txt_sub_group');
      	$datas['ud_is_active'] = $this->input->post('txt_status');
      	
       	$user_id = $this->input->post('txt_user_id');
       
       	if( ! empty($user_id))
       	{
       		$result = $this->um->do_update($datas,$user_id);

   		  	echo json_encode(array(
            	"status" => $result,
            	"url" => base_url('users')
            ));
       	}
       	else
       	{
       		$result = $this->um->do_upload($datas);
            echo json_encode(array(
            	"status" => $result,
            	"url" => base_url('users')
            ));
       	}
  
	}

	public function delete()
	{
		$id = $this->uri->segment(3);

		$upload_dir = str_replace('npanel'.DIRECTORY_SEPARATOR,'' , FCPATH);
		$img_path = $upload_dir."assets".DIRECTORY_SEPARATOR."images".DIRECTORY_SEPARATOR."users";

		$get_users = $this->um->get_data_edit($id)->row();
		$get_emp = $this->um->get_data_employee($id)->row();

		$datas['username'] = $get_users->username;
        $datas['password'] = $get_users->password;
        $datas['ori_password'] = $get_users->ori_password;
        $datas['sub_group'] = $get_users->sub_group;
        $datas['is_active'] = $get_users->is_active;

		$deleteusers = $this->um->delete($datas,$id);
		$updateemp = $this->um->do_update_employee($get_emp);
		 redirect(base_url('users'), 'refresh');
	}
}