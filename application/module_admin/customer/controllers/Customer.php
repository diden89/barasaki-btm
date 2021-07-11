<?php
/*!
 * @package PT. Barasaki Sinergi Semesta
 * @copyright PT. Barasaki Sinergi Semesta
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /barasaki-btm/application/module_admin/Customer/controllers/Customer.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Customer extends MY_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model('Customer_model','cm');
	}

	public function index()
	{
		$get_properties = $this->db_home->get_properties($this->uri->segment(1));

		if ($get_properties && $get_properties->num_rows() > 0)
		{	

			$row_properties = $get_properties->row();
			$get_data = $this->cm->get_data();
			$this->store_params['title'] = $this->store_params['title2'] = $row_properties->rm_caption;
			$this->store_params['page_active'] = $row_properties->rm_caption;
			$this->store_params['page_icon'] = $row_properties->rm_icon;
			$this->store_params['data'] = $get_data->result_array();
			$this->store_params['source_top'] = array(
				'<link rel="stylesheet" href="'.front_url('assets/templates/admin').'/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">'
			);
			$this->store_params['source_bot'] = array(
				'<script src="'.front_url('assets/templates/admin').'/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>',
				'<script src="'.front_url('assets/templates/admin').'/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>',
				'<script src="'.front_url('assets/js/admin/customer/').'/customer.js"></script>',
				'<script> function deletedata(delete_url){$("#deleteModal").modal("show", {backdrop: "static"});
      			document.getElementById("deleteData").setAttribute("href" , delete_url);
    			}</script>',
			);
			$this->view('customer_view');
		}
		else
		{
			show_404();
		}
	}

	public function search_data()
	{
		prin_r($_POST);exit;
		$this->index($_POST);
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
				'<link rel="stylesheet" href="'.front_url('assets/templates/admin').'/plugins/summernote/0.8.12/summernote.css">'
			);
			$this->store_params['source_bot'] = array(
				'<script src="'.front_url('assets/templates/admin').'/plugins/summernote/0.8.12/summernote.min.js"></script>',
				'<script src="'.front_url('assets/js/admin/customer/').'/customer_form.js"></script>',
				
			);
			
			$this->store_params['cond'] = ucwords($cond).' customer';
			// $this->store_params['datacustomer'] = $this->cm->get_customer()->result_array();
			
			if($cond !== 'add')
			{
				$id = $this->uri->segment(4);
				$get_data_edit = $this->cm->get_data_edit($id);
				$this->store_params['data'] = $get_data_edit->row();
			}
			
			$this->view('customer_input_view');
			
		}
		else
		{
			show_404();
		}
	}

	public function input_action()
	{
		// print_r($_POST);exit;
		$upload_dir = str_replace('npanel'.DIRECTORY_SEPARATOR,'' , FCPATH);
		
		$config['upload_path'] = $upload_dir."assets".DIRECTORY_SEPARATOR."images".DIRECTORY_SEPARATOR."customer";
        $config['allowed_types'] ='gif|jpg|png|jpeg';

	    $datas['caption'] = $this->input->post('txt_caption');
	    $datas['url'] = $this->input->post('txt_url');        
        $datas['description'] = $this->input->post('txt_desc');
        $datas['is_active'] = $this->input->post('txt_status');
      	
       	$this->load->library('upload',$config);
       
		if( ! empty($this->input->post('txt_id_customer')))
		{
			$old_img = substr($this->input->post('txt_img_old'), 23);

			if($this->upload->do_upload('txt_img'))
			{
				$data = array('upload_data' => $this->upload->data());

	            $image_name	 = $data['upload_data']['file_name']; 
	            $datas['img'] = 'assets/images/customer/'.$image_name; 

	            $id = $this->input->post('txt_id_customer');

	            unlink($config['upload_path'].DIRECTORY_SEPARATOR.$old_img);
	            $result = $this->cm->do_update($datas,$id);
	            
	            
	            echo json_encode(array(
	            	"status" => $result,
	            	"url" => base_url('customer')
	            ));
			}
			else
			{
				$this->upload->display_errors();
	            $id = $this->input->post('txt_id_customer');

	            $result = $this->cm->do_update($datas,$id);

	            echo json_encode(array(
	            	"status" => $result,
	            	"url" => base_url('customer')
	            ));
			}

		}
		else
		{	        
	        if($this->upload->do_upload('txt_img')){
	            $data = array('upload_data' => $this->upload->data());	 
	            $image_name	 = $data['upload_data']['file_name']; 
	            $datas['img'] = 'assets/images/customer/'.$image_name; 

	            $result = $this->cm->do_upload($datas);

	            echo json_encode(array(
	            	"status" => $result,
	            	"url" => base_url('customer')
	            ));
	        }
	        else
	        {
	        
	            $datas['img'] = 'assets/images/customer/slider-default.jpg';

	            $result = $this->cm->do_upload($datas);

	            echo json_encode(array(
	            	"status" => $result,
	            	"url" => base_url('customer')
	            ));
	        }
		}
  
	}

	public function store_image()
	{
		if ($this->input->post('action') !== FALSE && $this->input->post('action') == 'store_image')
		{
			$config['upload_path'] = UPLOADPATH.'images'.DS.'tmp'.DS;
			$config['allowed_types'] = 'gif|jpg|jpeg|png';
			$config['remove_spaces']  = TRUE;
			$config['encrypt_name']  = TRUE;

			$this->load->library('upload', $config);

			if ( ! $this->upload->do_upload('image'))
			{
				print(json_encode(array(
					'success' => false,
					'msg' => $this->upload->display_errors()
				)));
			}
			else
			{
				$data = $this->upload->data();

				print(json_encode(array(
					'success' => true,
					'url' => front_url('assets/images/tmp/'.$data['file_name'])
				)));
			}
		}
		else exit('You can\'t access this page!');
	}
	
	public function delete()
	{
		$id = $this->uri->segment(3);

		$dir = str_replace('npanel'.DIRECTORY_SEPARATOR,'' , FCPATH);
		
		$config_dir = $dir."assets".DIRECTORY_SEPARATOR."images".DIRECTORY_SEPARATOR."customer";

		$get_data = $this->cm->get_data_edit($id)->row();
		
		$datas['id'] = $get_data->id;
        $datas['caption'] = $get_data->caption;
        $datas['description'] = $get_data->description;
        $datas['url'] = $get_data->url;
        $datas['img'] = $get_data->img;
        $datas['is_active'] = $get_data->is_active;

      	$img_url = substr($get_data->img, 23);

		unlink($config_dir.DIRECTORY_SEPARATOR.$img_url);

		$del_data = $this->cm->delete($datas,$id);
		redirect(base_url('customer'), 'refresh');
	}
}