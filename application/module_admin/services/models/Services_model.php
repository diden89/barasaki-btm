<?php
/*!
 * @package Koperasi Bintang Tanjung Madani
 * @copyright Koperasi Bintang Tanjung Madani
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /bintangtanjungmadani/application/module_admin/about_us/models/About_us_model.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Services_model extends CI_Model {
	
	public function get_data($limit,$start)
	{
		$this->db->select('a.*,b.url');
		$this->db->from('services a');
		$this->db->join('menu b', 'a.menu_id = b.id','left');
		if( ! empty($limit))
		{
			$this->db->limit($limit,$start);
		}

		return $this->db->get();
	}

	public function get_data_edit($id)
	{	
		$this->db->select('a.*');	
		$this->db->from('services a');
		$this->db->join('menu b', 'a.menu_id = b.id','left');
		$this->db->where('a.id', $id);
		return $this->db->get();
	}
	
	public function get_category()
	{
		$this->db->where('is_active', 'Y');
		$this->db->where('type', 'services');
		return $this->db->get('category');
	}
	
	public function get_data_menu()
	{
		// $this->db->where('is_active', 'Y');
		// $this->db->where('is_active', 'Y');
		// $this->db->where('is_admin', 'N');
		// return $this->db->get('menu');

		return $this->db->query('select * from menu where parent_id = (select id from menu where url = "services" and is_admin = "N" and is_active = "Y") and is_admin = "N" and is_active = "Y" ');
	}
	public function get_data_icon()
	{
		$this->db->where('is_active', 'Y');
		return $this->db->get('icon');
	}

	public function do_upload($data = array())
	{
		$result= $this->db->insert('services',$data);
       	
       	$insert_id = $this->db->insert_id();

        if ($result)
		{
			$this->db->set($data);
			$this->db->set('id',$insert_id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'insert');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_services');
		}

		return FALSE;
	}

	public function do_update($data = array(),$id)
	{

		$this->db->set($data);
		$this->db->where('id',$id);

		$update = $this->db->update('services');

		if ($update)
		{
			$this->db->set($data);
			$this->db->set('id',$id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'update');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_services');
		}
		return FALSE;
	}

}
