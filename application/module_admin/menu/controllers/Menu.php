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

class Menu extends MY_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model('Menu_model','mm');
		$this->load->library('pagination');
	}

	public function index()
	{
		$get_properties = $this->db_home->get_properties($this->uri->segment(1));

		if ($get_properties && $get_properties->num_rows() > 0)
		{	

			$row_properties = $get_properties->row();
			$get_data = $this->mm->get_data();
			$this->store_params['title'] = $this->store_params['title2'] = $row_properties->caption;
			$this->store_params['page_active'] = $row_properties->caption;
			$this->store_params['header_title'] = 'Menu';
			$this->store_params['pages_title'] = 'Menu List';
			$this->store_params['page_icon'] = $row_properties->icon;
			$this->store_params['data'] = $get_data->result_array();
			$this->store_params['source_top'] = array(
				// '<link rel="stylesheet" href="'.front_url('assets/templates/admin').'/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">'
				'<link rel="stylesheet" href="'.front_url('assets/css/').'jquerysctipttop.css">'
			);
			$this->store_params['source_bot'] = array(
				// '<script src="'.front_url('assets/templates/admin').'/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>',
				'<script src="'.front_url('assets/templates/other').'/jquery_acollapsetable/jquery.aCollapTable.js"></script>',
				'<script src="'.front_url('assets/templates/admin').'/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>',
				'<script src="'.front_url('assets/js/admin/menu/').'/menu.js"></script>'
			);
			$this->view('menu_view');
		}
		else
		{
			show_404();
		}
	}

	public function get_menu_data()
	{
		if (isset($_POST['action']) && $_POST['action'] == 'get_menu_data')
		{
			$success = FALSE;
			$rm_is_admin = $this->input->post('rm_is_admin');
			$get_menu = $this->mm->get_menu(array('rm_is_active' => 'Y','rm_is_admin' => $rm_is_admin));

			if ($get_menu && $get_menu->num_rows() > 0) echo json_encode(array('success' => TRUE, 'data' => $get_menu->result()));
			else echo json_encode(array('success' => TRUE));
		} else $this->show_404();
	}

	public function popup_modal()
	{
		$post = $this->input->post(NULL, TRUE);

		if (isset($post['action']) && ! empty($post['action']) && $post['action'] == 'popup_modal')
		{
			unset($post['action']);
			$data = $this->mm->get_menu(array('rm_id' => $post['id'],'rm_is_admin' => $post['is_admin']));			

			if($data->num_rows() > 0)
			{
				$data2 = $data->row();
				$parent_id = ($data2->rm_parent_id !== "") ? $data2->rm_parent_id : "";
				$post['data'] = $data2;
			}
			else
			{
				$parent_id = "";
			}
			$post['option'] = $this->_build_data($parent_id,$post['is_admin']);
			$post['url_target'] = $this->_url_target_option($post['id']);
			
			$this->load->view('menu_popup_modal_view', $post);
		}
		else $this->show_404();
	}

	public function _build_data($id = "",$isAdmin = "")
	{
		$get_menu_list = $this->mm->get_menu(array('rm_is_active' => 'Y', 'rm_is_admin' => $isAdmin));
		$tree_menu_list = $this->_buildTree($get_menu_list->result(),$id);

		return $tree_menu_list;
	}

	public function _buildTree($datas, $sel_id = "", $parent_id = NULL, $idx = 0) 
	{
	    $str_menu = FALSE;

		if ($parent_id == '' || $parent_id == ' ' || $parent_id == NULL || $parent_id == 0 || empty($parent_id))
		{
			$parent_id = NULL;
		}

		$idx++;

		foreach ($datas as $data)
		{
			$dash = ($parent_id !== NULL) ? str_repeat('>', $idx) .' ' :'';
			$sel = ($data->rm_id == $sel_id) ? 'selected' : '';
			if ($data->rm_parent_id == $parent_id)
			{
				$children = $this->_buildTree($datas, $sel_id, $data->rm_id, $idx);

				if ($children !== FALSE)
				{

					$str_menu .= '
							<option value="'.$data->rm_id.'" '.$sel.'>'.$dash.$data->rm_caption.'</option>
						';	

					if ($idx > 0)
					{
						$str_menu .= $children;
					}
				
				}
				else
				{
					
					if($parent_id != NULL)
					{
						$str_menu .= '
							<option value="'.$data->rm_id.'" '.$sel.'>'.$dash.$data->rm_caption.'</option>
						';	
					}
					else
					{

						$str_menu .= '
							<option value="'.$data->rm_id.'" '.$sel.'>'.$data->rm_caption.'</option>
						';	

					}	
				}
			}
		}

		return $str_menu;
	}

	public function _url_target_option($rm_id = '')
	{
		$str_menu = FALSE;

		$get_menu = $this->mm->get_menu(array('rm_id' => $rm_id));

		if($get_menu->num_rows() > 0)
		{

			$get_menu = $get_menu->row();
			$str_menu .= '
				<option value="_blank" '.(($get_menu->rm_url_target == '_blank') ? 'selected' : '').'>_blank</option>
				<option value="_top" '.(($get_menu->rm_url_target == '_top') ? 'selected' : '').'>_top</option>
				<option value="_self" '.(($get_menu->rm_url_target == '_self') ? 'selected' : '').'>_self</option>
				<option value="_parent" '.(($get_menu->rm_url_target == '_parent') ? 'selected' : '').'>_parent</option>
			';				
		}
		else
		{
			$str_menu .= '
				<option value="_blank">_blank</option>
				<option value="_top" >_top</option>
				<option value="_self">_self</option>
				<option value="_parent">_parent</option>
			';		
		}

		return $str_menu;
	}

	public function store_data()
	{

		$post = $this->input->post(NULL, TRUE);

		if (isset($post['action']) && ! empty($post['action']) && $post['action'] == 'store_data')
		{
			unset($post['action']);

			$store_data = $this->mm->store_data($post);

			if ($store_data)
			{
				$rm_id = $post['mode'] == 'add' ? $store_data : $post['txt_id_menu'];

			}

			echo json_encode(array('success' => $store_data,'url' => base_url('menu')));
		}
		else $this->show_404();
	}

	public function get_menu_option()
	{
		$is_admin = $this->input->post('is_admin');
		$id_parent_menu = ( ! empty($this->input->post('id_parent_menu'))) ? $this->input->post('id_parent_menu') : "";

		$menu_opt = $this->mm->get_menu($is_admin);
		
		if($menu_opt->num_rows() > 0){ 
	        echo '<option value="">Pilih Induk</option>'; 
	        foreach($menu_opt->result_array() as $row)
	        {
	        	$sel = ($id_parent_menu == $row['id']) ? 'selected' : '';
	        	if($row['parent_id'] != "" || $row['parent_id'] != null)
	        	{
	        		$get_menu_utama = $this->mm->get_menu_utama($row['parent_id'])->row();
	            	echo '<option value="'.$row['id'].'"'.$sel.'>'.$get_menu_utama->caption.' > '.$row['caption'].'</option>'; 
	        	}
	        	else
	        	{
	        		echo '<option value="'.$row['id'].'"'.$sel.'>'.$row['caption'].'</option>'; 
	        	}
	        } 
	    }else{ 
	        echo '<option value="">No Data</option>'; 
	    } 
	}

	public function delete_data()
	{
		$post = $this->input->post(NULL, TRUE);

		if (isset($post['action']) && ! empty($post['action']) && $post['action'] == 'delete_data')
		{
			unset($post['action']);

			$delete_data = $this->mm->delete_data($post);

			echo json_encode(array('success' => $delete_data,'url' => base_url('menu')));
		}
		else $this->show_404();
	}
}