<?php
/*!
 * @package Iwebebs
 * @copyright PT Iwebe Bangun Solusi
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /iwebebs/application/module_admin/about_us/controllers/About_us.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Projects extends MY_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model('projects_model','pm');
		$this->load->library('pagination');
	}

	public function index()
	{
		$get_properties = $this->db_home->get_properties($this->uri->segment(1));

		if ($get_properties && $get_properties->num_rows() > 0)
		{	
			$total_data =  $this->pm->get_data($limit = "",$start = "")->num_rows();
			//pagination
			//konfigurasi pagination

	        $config['base_url'] = base_url('projects/index'); //site url
	        $config['total_rows'] = $total_data; //total row
	        $config['per_page'] = 5;  //show record per halaman
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
			$get_data = $this->pm->get_data($config['per_page'],$this->store_params['page']);

			$this->store_params['pagination'] = $this->pagination->create_links();
			// print_r($this->store_params['pagination']);exit;
			$this->store_params['title'] = $this->store_params['title2'] = $row_properties->caption;
			$this->store_params['page_active'] = $row_properties->caption;
			$this->store_params['page_icon'] = $row_properties->icon;
			$this->store_params['source_top'] = array(
				'<link rel="stylesheet" href="'.front_url('assets/templates/admin').'/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">'
			);
			$this->store_params['source_bot'] = array(
				'<script src="'.front_url('assets/templates/admin').'/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>',
				'<script src="'.front_url('assets/js/admin').'/projects.js"></script>',
				'<script> function deleteprojects(delete_url){$("#deleteModal").modal("show", {backdrop: "static"});
      			document.getElementById("deleteProjects").setAttribute("href" , delete_url);
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
			$this->view('projects_view');
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
				'<link rel="stylesheet" href="'.front_url('assets/templates/admin').'/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">'
			);
			$this->store_params['source_bot'] = array(
				'<script src="'.front_url('assets/templates/admin').'/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>',
				'<script src="'.front_url('assets/js/admin').'/projects.js"></script>'
			);
			
			if($cond !== 'add')
			{
				$id = $this->uri->segment(4);
				
				$this->store_params['category'] = $this->pm->get_category()->result_array();

				$get_data_edit = $this->pm->get_data_edit($id);
				$this->store_params['data'] = $get_data_edit->row();
		
				$this->store_params['cond'] = ucwords($cond).' Project';
			}
			else
			{
				$this->store_params['cond'] = ucwords($cond).' Project';
				$this->store_params['category'] = $this->pm->get_category()->result_array();
			}


			$this->view('projects_input_view');
			
		}
		else
		{
			show_404();
		}
	}

	public function input_action()
	{
		$upload_dir = str_replace('admin'.DIRECTORY_SEPARATOR,'' , FCPATH);
	
		$config['upload_path'] = $upload_dir."assets".DIRECTORY_SEPARATOR."images".DIRECTORY_SEPARATOR."projects";
        $config['allowed_types'] ='gif|jpg|png';
		$this->load->library('upload',$config);

		if( ! empty($this->input->post('txt_pro_id')))
		{
			$old_img = substr($this->input->post('txt_img_old'), 23);
			// unlink($config['upload_path'].DIRECTORY_SEPARATOR.$old_img);

			if($this->upload->do_upload('txt_img'))
			{
				$data = array('upload_data' => $this->upload->data());
	 
	            $datas['project_name'] = $this->input->post('txt_pro_name');
	            $datas['location'] = $this->input->post('txt_loc');
	            $datas['category_id'] = $this->input->post('cat_id');
	            $datas['description'] = $this->input->post('txt_desc');
	            $datas['front'] = ( ! empty($this->input->post('txt_front'))) ? $this->input->post('txt_front') : '0';

	            $image_name	 = $data['upload_data']['file_name']; 
	            $datas['img'] = 'assets/images/projects/'.$image_name; 

	            $id = $this->input->post('txt_pro_id');

	            $result = $this->pm->do_update($datas,$id);

	            unlink($config['upload_path'].DIRECTORY_SEPARATOR.$old_img);

	            echo json_encode(array(
	            	"status" => $result,
	            	"url" => base_url('projects')
	            ));
			}
			else
			{
				$datas['project_name'] = $this->input->post('txt_pro_name');
	            $datas['location'] = $this->input->post('txt_loc');
	            $datas['category_id'] = $this->input->post('cat_id');
	            $datas['description'] = $this->input->post('txt_desc');
	            $datas['front'] = ( ! empty($this->input->post('txt_front'))) ? $this->input->post('txt_front') : '0';
	            $id = $this->input->post('txt_pro_id');

	            $result = $this->pm->do_update($datas,$id);

	            echo json_encode(array(
	            	"status" => $result,
	            	"url" => base_url('projects')
	            ));
			}

		}
		else
		{	        
	        if($this->upload->do_upload('txt_img')){
	            $data = array('upload_data' => $this->upload->data());
	 
	            $datas['project_name'] = $this->input->post('txt_pro_name');
	            $datas['location'] = $this->input->post('txt_loc');
	            $datas['category_id'] = $this->input->post('cat_id');
	            $datas['description'] = $this->input->post('txt_desc');
	            $datas['front'] = ( ! empty($this->input->post('txt_front'))) ? $this->input->post('txt_front') : '0';

	            $image_name	 = $data['upload_data']['file_name']; 
	            $datas['img'] = 'assets/images/projects/'.$image_name; 

	            $result = $this->pm->do_upload($datas);

	            echo json_encode(array(
	            	"status" => $result,
	            	"url" => base_url('projects')
	            ));
	        }
	        else
	        {
	        	$datas['project_name'] = $this->input->post('txt_pro_name');
	            $datas['location'] = $this->input->post('txt_loc');
	            $datas['category_id'] = $this->input->post('cat_id');
	            $datas['description'] = $this->input->post('txt_desc');
	            $datas['front'] = ( ! empty($this->input->post('txt_front'))) ? $this->input->post('txt_front') : '0';

	            $datas['img'] = 'assets/images/projects/default.jpg';

	            $result = $this->pm->do_upload($datas);

	            echo json_encode(array(
	            	"status" => $result,
	            	"url" => base_url('projects')
	            ));
	        }
		}
  
	}

	public function delete()
	{
		$id = $this->uri->segment(3);

		$upload_dir = str_replace('admin'.DIRECTORY_SEPARATOR,'' , FCPATH);
		$img_path = $upload_dir."assets".DIRECTORY_SEPARATOR."images".DIRECTORY_SEPARATOR."projects";

		$get_project = $this->pm->get_data_edit($id)->row();

		$datas['project_name'] = $get_project->project_name;
        $datas['location'] = $get_project->location;
        $datas['category_id'] = $get_project->category_id;
        $datas['description'] = $get_project->description;
        $datas['front'] = $get_project->front;
        $datas['img'] = $get_project->img;
        
        $old_img = substr($get_project->img, 23);

        if($old_img !== 'default.jpg')
        {
        	unlink($img_path.DIRECTORY_SEPARATOR.$old_img);
        }

		$deleteProjects = $this->pm->delete($datas,$id);
		 redirect(base_url('projects'), 'refresh');
	}
}