<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home_model extends CI_Model {
	public function get_menu($where = array())
	{
		$this->db->where($where);
		$this->db->order_by('rm_sequence', 'asc');
		return $this->db->get('ref_menu');
	}
	
	public function get_company()
	{
		$this->db->where('is_active', 'Y');

		return $this->db->get('company');
	}

	public function get_customer()
	{
		$this->db->where('is_active', 'Y');

		return $this->db->get('customer');
	}

	public function get_distributor()
	{
		$this->db->where('is_active', 'Y');

		return $this->db->get('distributor');
	}

	public function get_email($company_id,$status)
	{
		$this->db->where('company_id', $company_id);
		$this->db->where('c_type', $status);
		$this->db->where('is_active', 'Y');

		return $this->db->get('contact');
	}

	public function get_recent_news()
	{
		$this->db->where('is_active', 'Y');
		$this->db->order_by('id','ASC');
		$this->db->limit(2);
		
		return $this->db->get('news');
	}

	public function get_contact($company_id)
	{
		$this->db->where('company_id', $company_id);
		$this->db->where_not_in('c_type', 'email');
		$this->db->where('is_active', 'Y');

		return $this->db->get('contact');
	}

	public function get_slide()
	{
		$this->db->where('is_active', 'Y');
		$this->db->order_by('seq', 'ASC');

		return $this->db->get('slide');
	}

	public function get_services()
	{
		$q = $this->db->query('select * from menu where parent_id = (select id from menu where url = "services" and is_admin = "N" and is_active = "Y") and is_active = "Y"' );

		// $this->db->select('*,a.id as srv_id,b.id as menu_id,a.img as srv_img');
		// $this->db->from('services a');
		// $this->db->join('menu b', 'a.menu_id = b.id');
		// $this->db->where('a.is_active','Y');
		// $this->db->where('a.menu_id != ""');

		// return $this->db->get();
		return $q;
	}

	public function get_projects()
	{
		$this->db->where('is_active', 'Y');

		return $this->db->get('projects');
	}

	public function get_total_projects()
	{
		$this->db->select('count(id) as total');
		$this->db->where('is_active', 'Y');

		return $this->db->get('projects');
	}

	public function get_total_team()
	{
		$this->db->select('count(id) as total');
		$this->db->where('is_active', 'Y');

		return $this->db->get('employee');
	}

	public function get_site_map()
	{
		$this->db->select('ut.caption as caption_url,ut.id as ut_id,sm.*');
		$this->db->from('site_map sm');
		$this->db->join('url_target ut','ut.id = sm.ut_id','LEFT');
		$this->db->where('sm.is_active', 'Y');
		return $this->db->get();
	}

	public function get_team()
	{
		$this->db->select('e.id as id_emp,e.fullname, p.caption as position, ed.caption as education, e.img', FALSE);
		$this->db->from('employee e');
		$this->db->join('position p', 'p.id = e.position_id');
		$this->db->join('education ed', 'ed.id = e.education_id');
		$this->db->where('e.is_active', 'Y');
		$this->db->where('p.is_active', 'Y');
		$this->db->where('ed.is_active', 'Y');
		$this->db->order_by('p.seq', 'ASC');

		return $this->db->get();
	}

	public function get_news($id="")
	{
		$this->db->select('*,n.id as news_id,c.id as cat_id', FALSE);
		$this->db->from('news n');
		$this->db->join('category c', 'c.id = n.category_id');
		$this->db->where('n.is_active', 'Y');
		$this->db->where('c.is_active', 'Y');
		
		if( ! empty($id))
		{
			$this->db->where('n.id', $id);
		}
		
		$this->db->order_by('n.date', 'ASC');

		return $this->db->get();
	}

	
	public function get_company_legal()
	{
		$this->db->where('is_active', 'Y');
		$this->db->order_by('seq', 'ASC');

		return $this->db->get('company_legal');
	}

	public function load_header_page($url)
	{
		$this->db->where('is_active', 'Y');
		$this->db->where('is_admin', 'N');
		$this->db->where('url', $url);
		
		return $this->db->get('menu');
	}

	public function input_data($table,$data)
	{
		return $this->db->insert($table,$data);
	}

	public function get_properties($url = '')
	{
		$this->db->where('rm_url', $url);
		$this->db->where('rm_is_active', 'Y');
		$this->db->where('rm_is_admin', 'N');

		return $this->db->get('ref_menu');
	}
}