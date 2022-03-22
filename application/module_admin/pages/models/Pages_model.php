<?php
/*!
 * @package Koperasi Bintang Tanjung Madani
 * @copyright Koperasi Bintang Tanjung Madani
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /bintangtanjungmadani/application/module_admin/Pages/models/Pages_model.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Pages_model extends CI_Model {
	public function get_data()
	{
		return $this->db->get('pages');
	}

	public function get_data_edit($id)
	{
		
		$this->db->where('id',$id);

		return $this->db->get('pages');
	}

	public function get_category()
	{
		$this->db->where('is_active', 'Y');

		return $this->db->get('category');
	}

	public function get_menu($cond)
	{
		$this->db->where('is_admin', $cond);
		$this->db->where('is_active', 'Y');

		return $this->db->get('menu');
	}
	
	public function do_upload($data = array())
	{
		$result= $this->db->insert('pages',$data);
       	
       	$insert_id = $this->db->insert_id();

        if ($result)
		{
			$this->db->set($data);
			$this->db->set('id',$insert_id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'insert');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_pages');
		}

		return FALSE;
	}

	public function do_update($data = array(),$id)
	{

		$this->db->set($data);
		$this->db->where('id',$id);

		$update = $this->db->update('pages');

		if ($update)
		{
			$this->db->set($data);
			$this->db->set('id',$id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'update');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_pages');
		}
		return FALSE;
	}

	public function delete($data=array(),$id)
	{
		$this->db->where('id',$id);
		$del = $this->db->delete('pages');

		if($del)
		{
			$this->db->set($data);
			$this->db->set('id',$id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'delete');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_pages');
		}
		return FALSE;
	}

}
