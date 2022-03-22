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

class Menu_old_model extends CI_Model {
	public function get_data()
	{
		$this->db->where('is_active', 'Y');
		return $this->db->get('menu');
	}

	public function get_data_edit($id)
	{		
		$this->db->where('is_active', 'Y');
		$this->db->where('id',$id);

		return $this->db->get('menu');
	}
	
	public function get_menu($cond)
	{
		$this->db->where('is_active', 'Y');
		$this->db->where('is_admin', $cond);
		return $this->db->get('menu');
	}
	
	public function get_menu_utama($id)
	{
		$this->db->where('is_active', 'Y');
		$this->db->where('id', $id);
		return $this->db->get('menu');
	}
	
	public function do_upload($data = array())
	{
		$result= $this->db->insert('menu',$data);
       	
       	$insert_id = $this->db->insert_id();

        if ($result)
		{
			$this->db->set($data);
			$this->db->set('id',$insert_id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'insert');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_menu');
		}

		return FALSE;
	}

	public function do_update($data = array(),$id)
	{

		$this->db->set($data);
		$this->db->where('id',$id);

		$update = $this->db->update('menu');

		if ($update)
		{
			$this->db->set($data);
			$this->db->set('id',$id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'update');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_menu');
		}
		return FALSE;
	}

	public function delete($data=array(),$id)
	{
		$this->db->set('is_active','N');
		$this->db->where('id',$id);
		$upd = $this->db->update('category');

		if($upd)
		{
			$this->db->set($data);
			$this->db->set('id',$id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'delete');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_category');
		}
		return FALSE;
	}

}
