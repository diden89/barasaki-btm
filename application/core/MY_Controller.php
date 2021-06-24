<?php
/*!
 * @package PT. Barasaki Sinergi Semesta
 * @copyright PT. Barasaki Sinergi Semesta
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /barasaki-btm/application/core/MY_Controller.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Controller extends CI_Controller {
	protected $store_params = array();
	protected $menu = '';
	protected $auth = TRUE;

	function __construct($config = array())
	{
		parent::__construct();

		$this->encryption->initialize(array('driver' => 'openssl'));
		$this->load->model('home/home_model', 'db_home');

		if (count($config) > 0)
		{
			foreach ($config as $k => $v)
			{
				$this->$k = $v;
			}
		}

		if (MODULE == 'module_admin')
		{
			if ($this->auth !== FALSE)
			{
				$this->validate_login();
			}
		}
	}

	protected function validate_login($params = array())
	{
		$this->load->model('auth/auth_model', 'db_auth');

		if (count($params) > 0)
		{
			$result = array('success' => FALSE);
			$validate_login = $this->db_auth->validate_login($params);

			if ($validate_login !== FALSE && $validate_login->num_rows() > 0)
			{
				$row = $validate_login->row();

				$this->session->set_userdata(array(
					'token' => $this->encryption->encrypt($row->id.':'.$row->username),
					'username' => $row->username,
					'fullname' => $row->fullname,
					'sub_group' => $row->sub_group
				));

				$result['success'] = TRUE;
			}

			return $result;
		}

		if ($this->session->userdata('token') == TRUE) {
			$token = $this->encryption->decrypt($this->session->userdata('token'));
			$exp_token = explode(':', $token);
			$new_params = array('id' => $exp_token[0], 'username' => $exp_token[1]);
			$validate_login = $this->db_auth->validate_login($new_params);
			
			if ($validate_login !== FALSE && $validate_login->num_rows() > 0)
			{
				return TRUE;
			}
		}

		$this->session->set_userdata(array('_reDir' => current_url()));
		redirect('auth');
	}

	protected function do_logout()
	{
		$this->session->set_userdata(array('token' => ''));
		$this->session->unset_userdata(array('token' => ''));
		$this->session->sess_destroy();

		redirect('auth');
	}

	protected function view($body)
	{
		$this->store_params['title'] = isset($this->store_params['title']) ? TITLE.' - '.$this->store_params['title'] : TITLE;
		$this->store_params['title2'] = isset($this->store_params['title2']) ? TITLE2.' - '.$this->store_params['title2'] : TITLE2;
		$this->store_params['page_active'] = isset($this->store_params['page_active']) ? $this->store_params['page_active'] : 'Home';
		$this->store_params['page_icon'] = isset($this->store_params['page_icon']) ? $this->store_params['page_icon'] : 'fa fa-home';

		if (MODULE == 'module_frontend')
		{
			$company = $this->db_home->get_company()->row();
			$year_now = date('Y');

			$this->store_params['menu'] = $this->_menu_build();
			$this->store_params['footer'] = $this->load_footer();
			$this->store_params['company'] = $company;
			$this->store_params['services_footer'] = $this->db_home->get_services()->result();
			$this->store_params['news'] = $this->db_home->get_recent_news()->result();
			$this->store_params['since_years'] =  $year_now - $company->since_years;
			$this->store_params['total_projects'] =  $this->db_home->get_total_projects()->row();
			$this->store_params['total_team'] =  $this->db_home->get_total_team()->row();

			// $year_now = date('Y');
			// echo $year_now - $company->since_years;exit;
			$view = 'views';
		}
		elseif (MODULE == 'module_admin')
		{
			$this->store_params['menu'] = $this->_generate_admin_menu();
			$this->store_params['message'] = $this->_load_message();
			$view = 'admin_view';
		}

		$this->store_params['body'] = $this->load->view($body, $this->store_params, TRUE);
		
		$this->load->view($view, $this->store_params);
	}

	private function _generate_admin_menu()
	{
		$get_menu = $this->db_home->get_menu(array('is_admin' => 'Y'));
		$tree_menu = $this->_generate_tree_menu($get_menu->result());

		return $tree_menu;
	}

	private function _generate_tree_menu($datas, $parent_id = NULL, $idx = 0)
	{
		$str_menu = FALSE;

		if ($parent_id == '' || $parent_id == ' ' || $parent_id == NULL || $parent_id == 0 || empty($parent_id))
		{
			$parent_id = NULL;
		}

		$idx++;

		foreach ($datas as $data)
		{
			if ($data->parent_id == $parent_id)
			{
				$children = $this->_generate_tree_menu($datas, $data->id, $idx);

				if ($children !== FALSE)
				{
					$str_menu .= '<li class="treeview"><a href="'.site_url($data->url).'"><i class="'.$data->icon.'"></i> <span>'.$data->caption.'</span><span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span></a>';

					if ($idx > 0)
					{
						$str_menu .= '<ul class="treeview-menu">';
					}

					$str_menu .= $children;

					if ($idx > 0)
					{
						$str_menu .= '</ul>';
					}

					$str_menu .= '</li>';
				}
				else
				{
					$str_menu .= '<li class="'.($this->store_params['page_active'] == $data->caption ? 'active' : '').'"><a href="'.site_url($data->url).'"><i class="'.$data->icon.'"></i> '.$data->caption.'</a></li>';
				}
			}
		}

		return $str_menu;
	}

	private function _menu_build()
	{
		$menu_build_raw = $this->db_home->get_menu(array('is_admin' => 'N'));
		$menu_build_style = $this->_menu_build_style($menu_build_raw->result());

		return $menu_build_style;
	}

	private function _menu_build_style($datas, $parent_id = NULL, $idx = 0)
	{
		$str_menu = FALSE;

		if ($parent_id == '' || $parent_id == ' ' || $parent_id == NULL || $parent_id == 0 || empty($parent_id))
		{
			$parent_id = NULL;
		}

		$idx++;

		foreach ($datas as $data)
		{
			if ($data->parent_id == $parent_id)
			{
				$children = $this->_generate_tree_menu($datas, $data->id, $idx);

				if ($children !== FALSE)
				{
					$str_menu .= '<li class="treeview"><a href="'.site_url($data->url).'"><i class="'.$data->icon.'"></i> <span>'.$data->caption.'</span><span class="pull-right-container"><b class="caret"></b></span></a>';

					if ($idx > 0)
					{
						$str_menu .= '<ul class="treeview-menu">';
					}

					$str_menu .= $children;

					if ($idx > 0)
					{
						$str_menu .= '</ul>';
					}

					$str_menu .= '</li>';
				}
				else
				{
					$str_menu .= '<li class="'.($this->store_params['page_active'] == $data->caption ? 'active' : '').'"><a href="'.site_url($data->url).'"><i class="'.$data->icon.'"></i> '.$data->caption.'</a></li>';
				}
			}
		}

		return $str_menu;
	}

	
	protected function load_footer()
	{
		$get_company = $this->db_home->get_company();
		$row_company = $get_company->result();
		
		foreach ($row_company as $k => $v)
		{
			$get_email = $this->db_home->get_email($v->id,'email');
			$v->email = array();

			foreach ($get_email->result() as $k1 => $v1)
			{
				$v->email[] = $v1->c_detail;
			}
			 
			$get_contact = $this->db_home->get_contact($v->id);
			$v->contact = array();

			foreach ($get_contact->result() as $k1 => $v1)
			{
				$temp = array(
					'c_type' => $v1->c_type,
					'c_detail' => $v1->c_detail,
					'c_url' => $v1->c_url,
					'c_message' => $v1->c_message
				);

				$v->contact[] = $temp;
			}
		}
		
		return $row_company;
	}

	protected function _load_message()
	{
		$get_total_msg = $this->db_home->get_total_message(array('is_read' => 'N'))->row();
		
		return $get_total_msg;
	}
}