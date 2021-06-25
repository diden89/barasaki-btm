<?php
/*!
 * @package PT. Barasaki Sinergi Semesta
 * @copyright PT. Barasaki Sinergi Semesta
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /barasaki-btm/application/module_admin/category/models/category_model.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Category_model extends CI_Model {
	public function get_data()
	{
		$this->db->where('is_active', 'Y');
		$this->db->order_by('id', 'DESC');
		return $this->db->get('category');
	}

	public function get_data_edit($id)
	{
		
		// $this->db->where('is_active', 'Y');
		$this->db->order_by('type', 'ASC');
		$this->db->where('id',$id);

		return $this->db->get('category');
	}

	public function get_last_id()
	{
		$this->db->order_by('id', 'DESC');
		$this->db->limit(1);

		return $this->db->get('category');
	}
	
	public function get_cat_type()
	{
		$this->db->where('is_active', 'Y');

		return $this->db->get('category_type');
	}
	
	public function do_upload($data = array())
	{
		$result= $this->db->insert('category',$data);
       	
       	$insert_id = $this->db->insert_id();

        if ($result)
		{
			$this->db->set($data);
			$this->db->set('id',$insert_id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'insert');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_category');
		}

		return FALSE;
	}

	public function do_update($data = array(),$id)
	{

		$this->db->set($data);
		$this->db->where('id',$id);

		$update = $this->db->update('category');

		if ($update)
		{
			$this->db->set($data);
			$this->db->set('id',$id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'update');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_category');
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
