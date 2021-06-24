<?php
/*!
 * @package PT. Barasaki Sinergi Semesta
 * @copyright PT. Barasaki Sinergi Semesta
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /barasaki-btm/application/module_admin/about_us/controllers/About_us.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Employee extends MY_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model('employee_model','em');
		$this->load->library('pagination');
	}

	public function index()
	{
		$get_properties = $this->db_home->get_properties($this->uri->segment(1));

		if ($get_properties && $get_properties->num_rows() > 0)
		{	
			$total_data =  $this->em->get_data($limit = "",$start = "")->num_rows();
			//pagination
			//konfigurasi pagination

	        $config['base_url'] = base_url('employee/index'); //site url
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
			$get_data = $this->em->get_data($config['per_page'],$this->store_params['page']);

			$this->store_params['pagination'] = $this->pagination->create_links();
			// print_r($this->store_params['pagination']);exit;
			$this->store_params['title'] = $this->store_params['title2'] = $row_properties->caption;
			$this->store_params['page_active'] = $row_properties->caption;
			$this->store_params['page_icon'] = $row_properties->icon;
			$this->store_params['source_top'] = array(
				'<link rel="stylesheet" href="'.front_url('assets/templates/admin').'/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">'
			);
			$this->store_params['source_bot'] = array(
				'<script src="'.front_url('assets/js/admin').'/employee.js"></script>',
				'<script> function delete_data(delete_url){$("#deleteModal").modal("show", {backdrop: "static"});
      			document.getElementById("deleteemployee").setAttribute("href" , delete_url);
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
			$this->view('employee_view');
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
				'<link rel="stylesheet" href="'.front_url('assets/templates/admin').'/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">',
				'<link rel="stylesheet" href="'.front_url('assets/templates/admin').'/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">',
				'<style>
					.datepicker{z-index:1151;}
				</style>'
			);
			$this->store_params['source_bot'] = array(
				'<script src="'.front_url('assets/templates/admin').'/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>',
				'<script src="'.front_url('assets/templates/admin').'/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>',
				'<script src="'.front_url('assets/js/admin').'/employee.js"></script>',
				'<script type="text/javascript">
				 $(function(){
				  $(".datepicker").datepicker({
				      format: "dd-mm-yyyy",
				      autoclose: true,
				      todayHighlight: true,
				  });
				 });
				</script>'
			);
			
			$this->store_params['education'] = $this->em->get_data_for_select('education')->result_array();
			$this->store_params['position'] = $this->em->get_data_for_select('position')->result_array();
			$this->store_params['cond'] = ucwords($cond).' employee';

			if($cond !== 'add')
			{
				$id = $this->uri->segment(4);
				$get_data_edit = $this->em->get_data_edit($id);
				$this->store_params['data'] = $get_data_edit->row();
			}


			$this->view('employee_input_view');
			
		}
		else
		{
			show_404();
		}
	}

	public function input_action()
	{
		$upload_dir = str_replace('npanel'.DIRECTORY_SEPARATOR,'' , FCPATH);
	
		$config['upload_path'] = $upload_dir."assets".DIRECTORY_SEPARATOR."images".DIRECTORY_SEPARATOR."employee";
        $config['allowed_types'] ='gif|jpg|png';
	
        $datas['fullname'] = $this->input->post('txt_fullname');
        $datas['pob'] = $this->input->post('txt_pob');
        $datas['dob'] = date('Y-m-d', strtotime($this->input->post('txt_dob')));
        $datas['address'] = $this->input->post('txt_add');
        $datas['education_id'] = $this->input->post('txt_edu');
        $datas['position_id'] = $this->input->post('txt_pos');
        $datas['phone'] = $this->input->post('txt_phone');
        $datas['email'] = $this->input->post('txt_email');
        $config['file_name'] = str_replace(" ", "_", $datas['fullname']);

       
		$this->load->library('upload',$config);

		if( ! empty($this->input->post('txt_employee_id')))
		{
			$old_img = substr($this->input->post('txt_img_old'), 23);

			if($this->upload->do_upload('txt_img'))
			{
				$data = array('upload_data' => $this->upload->data());

	            $image_name	 = $data['upload_data']['file_name']; 
	            $datas['img'] = 'assets/images/employee/'.$image_name; 

	            $id = $this->input->post('txt_employee_id');

	            $result = $this->em->do_update($datas,$id);

	            if($old_img !== 'employee-default.jpg')
	            {
	            	unlink($config['upload_path'].DIRECTORY_SEPARATOR.$old_img);
	            }

	            echo json_encode(array(
	            	"status" => $result,
	            	"url" => base_url('employee')
	            ));
			}
			else
			{
	            $id = $this->input->post('txt_employee_id');

	            $result = $this->em->do_update($datas,$id);

	            echo json_encode(array(
	            	"status" => $result,
	            	"url" => base_url('employee')
	            ));
			}

		}
		else
		{	        
	        if($this->upload->do_upload('txt_img')){
	            $data = array('upload_data' => $this->upload->data());	 
	            $image_name	 = $data['upload_data']['file_name']; 
	            $datas['img'] = 'assets/images/employee/'.$image_name; 

	            $result = $this->em->do_upload($datas);

	            echo json_encode(array(
	            	"status" => $result,
	            	"url" => base_url('employee')
	            ));
	        }
	        else
	        {
	        
	            $datas['img'] = 'assets/images/employee/employee-default.jpg';

	            $result = $this->em->do_upload($datas);

	            echo json_encode(array(
	            	"status" => $result,
	            	"url" => base_url('employee')
	            ));
	        }
		}
  
	}

	public function delete()
	{
		$id = $this->uri->segment(3);

		$upload_dir = str_replace('npanel'.DIRECTORY_SEPARATOR,'' , FCPATH);
		$img_path = $upload_dir."assets".DIRECTORY_SEPARATOR."images".DIRECTORY_SEPARATOR."employee";

		$get_employee = $this->em->get_data_edit($id)->row();

		$datas['fullname'] = $get_employee->fullname;
        $datas['pob'] = $get_employee->pob;
        $datas['dob'] = $get_employee->dob;
        $datas['address'] = $get_employee->address;
        $datas['education_id'] = $get_employee->education_id;
        $datas['position_id'] = $get_employee->position_id;
        $datas['phone'] = $get_employee->phone;
        $datas['email'] = $get_employee->email;
        $datas['seq'] = $get_employee->seq;
        $datas['userid'] = $get_employee->userid;
        $datas['is_active'] = $get_employee->is_active;
        $datas['img'] = $get_employee->img;

        $old_img = substr($get_employee->img, 23);

        if($old_img !== 'employee-default.jpg')
        {
        	unlink($img_path.DIRECTORY_SEPARATOR.$old_img);
        }

		$deleteemployee = $this->em->delete($datas,$id);
		 redirect(base_url('employee'), 'refresh');
	}
}