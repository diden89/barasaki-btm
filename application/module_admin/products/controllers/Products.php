<?php
/*!
 * @package Barasaki Semesta
 * @copyright Barasaki Semesta
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /barasaki-btm/application/module_admin/about_us/controllers/About_us.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Products extends MY_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model('products_model','prm');
		$this->load->library('pagination');
	}

	public function index()
	{
		$get_properties = $this->db_home->get_properties($this->uri->segment(1));

		if ($get_properties && $get_properties->num_rows() > 0)
		{	
			$total_data =  $this->prm->get_data($limit = "",$start = "")->num_rows();
			//pagination
			//konfigurasi pagination

	        $config['base_url'] = base_url('products/index'); //site url
	        $config['total_rows'] = $total_data; //total row
	        $config['per_page'] = 6;  //show record per halaman
	        $config["uri_segment"] = 3;  // uri parameter
	        $choice = $config["total_rows"] / $config["per_page"];
	        $config["num_links"] = floor($choice);

	         // Membuat Style pagination untuk BootStrap v4
	     	$config['first_link']       = 'First';
	        $config['last_link']        = 'Last';
	        $config['next_link']        = 'Next';
	        $config['prev_link']        = 'Prev';
	        $config['full_tag_open']    = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
	        $config['full_tag_close']   = '</ul></nav></div>';
	        $config['num_tag_open']     = '<li class="page-item"><span class="page-link">';
	        $config['num_tag_close']    = '</span></li>';
	        $config['cur_tag_open']     = '<li class="page-item active"><span class="page-link">';
	        $config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></li>';
	        $config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
	        $config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
	        $config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
	        $config['prev_tagl_close']  = '</span>Next</li>';
	        $config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
	        $config['first_tagl_close'] = '</span></li>';
	        $config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
	        $config['last_tagl_close']  = '</span></li>';
	 
	        $this->pagination->initialize($config);
	       	$this->store_params['page'] = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
	 		$this->store_params['number_data'] = ($this->uri->segment(3)) ? $this->uri->segment(3)+1 : 1;
	        //panggil function get_mahasiswa_list yang ada pada mmodel mahasiswa_model. 

			$row_properties = $get_properties->row();
			$get_data = $this->prm->get_data($config['per_page'],$this->store_params['page']);

			$this->store_params['pagination'] = $this->pagination->create_links();
			// print_r($this->store_params['pagination']);exit;
			$this->store_params['title'] = $this->store_params['title2'] = $row_properties->caption;
			$this->store_params['page_active'] = $row_properties->caption;
			$this->store_params['page_icon'] = $row_properties->icon;
			$this->store_params['source_top'] = array(
				'<link rel="stylesheet" href="'.front_url('assets/css').'editor.css">'
			);
			$this->store_params['source_bot'] = array(
				'<script src="'.front_url('assets/js/admin').'/editor.js"></script>',
				'<script src="'.front_url('assets/js/admin').'/products.js"></script>',
				'<script> function deleteproducts(delete_url){$("#deleteModal").modal("show", {backdrop: "static"});
      			document.getElementById("deleteProducts").setAttribute("href" , delete_url);
    			}</script>'
			);
			$this->store_params['data'] = $get_data->result_array();
			
			// $this->view('modal_projects');
			$this->view('products_view');
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

			$this->store_params['title'] = $this->store_params['title2'] = $row_properties->caption;
			$this->store_params['page_active'] = $row_properties->caption;
			$this->store_params['page_icon'] = $row_properties->icon;
			$this->store_params['source_top'] = array(
				'<link rel="stylesheet" href="'.front_url('assets/templates/admin').'/plugins/summernote/0.8.12/summernote.css">'
			);
			$this->store_params['source_bot'] = array(
				'<script src="'.front_url('assets/templates/admin').'/plugins/summernote/0.8.12/summernote.min.js"></script>',
				'<script src="'.front_url('assets/js/admin').'/products.js"></script>',
				
			);
			
			if($cond !== 'add')
			{
				$id = $this->uri->segment(4);
				
				$this->store_params['category'] = $this->prm->get_category()->result_array();

				$get_data_edit = $this->prm->get_data_edit($id);
				$this->store_params['data'] = $get_data_edit->row();
		
				$this->store_params['cond'] = ucwords($cond).' Products';
				$this->store_params['img_prod'] = $this->prm->get_img_prod(array('products_id' => $id))->result_array();

			}
			else
			{
				$this->store_params['cond'] = ucwords($cond).' Products';
				$this->store_params['category'] = $this->prm->get_category()->result_array();
			}


			$this->view('products_input_view');
			
		}
		else
		{
			show_404();
		}
	}

	public function input_action()
	{
		$upload_dir = str_replace('npanel'.DIRECTORY_SEPARATOR,'' , FCPATH);
	
		$config['upload_path'] = $upload_dir."assets".DIRECTORY_SEPARATOR."images".DIRECTORY_SEPARATOR."product";
        $config['allowed_types'] ='gif|jpg|png';
        $config['encrypt_name'] = TRUE;

		$this->load->library('upload',$config);

		$datas['products_name'] = $this->input->post('txt_pro_name');
		$datas['products_price'] = $this->input->post('txt_pro_pr');
		$datas['category_id'] = $this->input->post('cat_id');
		$datas['products_short_description'] = $this->input->post('txt_s_desc');
		$datas['products_detail_description'] = $this->input->post('txt_desc');
		$datas['is_best'] = $this->input->post('txt_front');
		$datas['date'] = date('Y-m-d H:i:s');
		// echo ( ! empty($_FILES['txt_img']['name'][0])) ? "tidak kososng" : "kosong" ;
		// print_r($_POST);
		// exit;
		$sort = $this->input->post('sort');
		$default = $this->input->post('txt_default');

		if( ! empty($this->input->post('txt_pro_id')))
		{
			$id = $this->input->post('txt_pro_id');
			$upd = $this->prm->do_update($datas,$id);

			$filesCount = count($_FILES['txt_img']['name']);
	        for($i = 0; $i < $filesCount; $i++){
	        	if( ! empty($_FILES['txt_img']['name'][$i])){
		            $_FILES['file']['name']     = $_FILES['txt_img']['name'][$i];
		            $_FILES['file']['type']     = $_FILES['txt_img']['type'][$i];
		            $_FILES['file']['tmp_name'] = $_FILES['txt_img']['tmp_name'][$i];
		            $_FILES['file']['error']     = $_FILES['txt_img']['error'][$i];
		            $_FILES['file']['size']     = $_FILES['txt_img']['size'][$i];
		           

		            $this->upload->initialize($config);
		            
		            // Upload file to server
		            if($this->upload->do_upload('file')){
		                // Uploaded file data
		                $fileData = $this->upload->data();

		                $uploadData['sort'] = $sort[$i];
		                $uploadData['img'] = 'assets/images/product/'.$fileData['file_name'];
		                $uploadData['products_id'] = $id;
		                // $uploadData[$i]['is_default'] = ( ! empty($this->input->post('txt_default')) ? 'Y' :'N');
		            }
		            $insert = $this->prm->do_upload_image($uploadData);
	       		}
	        }

	       	echo json_encode(array(
            	"status" => true,
            	"url" => base_url('products/cu_action/edit/'.$id)
            ));
		}
		else
		{
			$result_id = $this->prm->do_upload($datas);

			$filesCount = count($_FILES['txt_img']['name']);
	        for($i = 0; $i < $filesCount; $i++){
	        	if( ! empty($_FILES['txt_img']['name'][$i])){
		            $_FILES['file']['name']     = $_FILES['txt_img']['name'][$i];
		            $_FILES['file']['type']     = $_FILES['txt_img']['type'][$i];
		            $_FILES['file']['tmp_name'] = $_FILES['txt_img']['tmp_name'][$i];
		            $_FILES['file']['error']     = $_FILES['txt_img']['error'][$i];
		            $_FILES['file']['size']     = $_FILES['txt_img']['size'][$i];
		           
		            $this->upload->initialize($config);
		            
		            // Upload file to server
		            if($this->upload->do_upload('file')){
		                // Uploaded file data
		                $fileData = $this->upload->data();

		                $uploadData['sort'] = $sort[$i];
		                $uploadData['img'] = 'assets/images/product/'.$fileData['file_name'];
		                $uploadData['products_id'] = $result_id;
		                // $uploadData[$i]['is_default'] = ( ! empty($this->input->post('txt_default')) ? 'Y' :'N');
		            }
		            $insert = $this->prm->do_upload_image($uploadData);
	       		}
	        }

	       	echo json_encode(array(
            	"status" => true,
            	"url" => base_url('products/cu_action/edit/'.$result_id)
            ));
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

	public function delete_image()
	{
		$id = $this->uri->segment(3);
		$id_products = $this->uri->segment(4);

		$upload_dir = str_replace('npanel'.DIRECTORY_SEPARATOR,'' , FCPATH);
		$img_path = $upload_dir."assets".DIRECTORY_SEPARATOR."images".DIRECTORY_SEPARATOR."product";

		$get_img = $this->prm->get_img_prod(array('id' => $id))->row();

		$old_img = substr($get_img->img, 22);

      	unlink($img_path.DIRECTORY_SEPARATOR.$old_img);
	    $delete_img_prd = $this->prm->del_img_prod(array('id' =>$id));

	    redirect(base_url('products/cu_action/edit/'.$id_products), 'refresh');
	}

	public function delete()
	{
		$id = $this->uri->segment(3);

		$upload_dir = str_replace('npanel'.DIRECTORY_SEPARATOR,'' , FCPATH);
		$img_path = $upload_dir."assets".DIRECTORY_SEPARATOR."images".DIRECTORY_SEPARATOR."product";

		$get_product = $this->prm->get_data_edit($id)->result_array();

		foreach($get_product as $gp)
		{
			$datas['products_name'] = $gp['products_name'];
	        $datas['products_price'] = $gp['products_price'];
	        $datas['category_id'] = $gp['category_id'];
	        $datas['products_short_description'] = $gp['products_short_description'];
	        $datas['products_detail_description'] = $gp['products_detail_description'];
	        $datas['is_best'] = $gp['is_best'];
	        $datas['date'] = date('Y-m-m H:i:s');
	   
	        $old_img = substr($gp['img'], 22);

	        if($old_img !== 'default.jpg')
	        {
	        	unlink($img_path.DIRECTORY_SEPARATOR.$old_img);
	        }

	        $delete_img_prd = $this->prm->del_img_prod(array('products_id' =>$id));

		}

		$deleteProduct = $this->prm->delete($datas,$id);
		 redirect(base_url('products'), 'refresh');
	}
}