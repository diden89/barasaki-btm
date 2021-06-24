<?php
/*!
 * @package Barasaki Semesta
 * @copyright Barasaki Semesta
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /barasaki-btm/application/module_admin/about_us/models/About_us_model.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Projects_model extends CI_Model {
	public function get_data($limit,$start)
	{
		$this->db->select('*,a.id as projects_id');
		$this->db->from('projects a');
		$this->db->join('category b','a.category_id = b.id','left');
		$this->db->where('a.is_active', 'Y');
		$this->db->where('b.is_active', 'Y');
		$this->db->order_by('a.id', 'ASC');

		if( ! empty($limit))
		{
			$this->db->limit($limit,$start);
		}

		return $this->db->get();
	}

	public function get_data_edit($id)
	{
		$this->db->select('* ,a.id as projects_id');
		$this->db->from('projects a');
		$this->db->join('category b','a.category_id = b.id','left');
		$this->db->where('a.is_active', 'Y');
		$this->db->where('b.is_active', 'Y');
		$this->db->where('a.id',$id);

		return $this->db->get();
	}

	public function get_category()
	{
		$this->db->where('is_active', 'Y');
		return $this->db->get('category');
	}

	public function do_upload($data = array())
	{
		$result= $this->db->insert('projects',$data);
       	
       	$insert_id = $this->db->insert_id();

        if ($result)
		{
			$this->db->set($data);
			$this->db->set('id',$insert_id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'insert');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_projects');
		}

		return FALSE;
	}

	public function do_update($data = array(),$id)
	{
		$this->db->set($data);
		$this->db->where('id',$id);

		$update = $this->db->update('projects');

		if ($update)
		{
			$this->db->set($data);
			$this->db->set('id',$id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'update');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_projects');
		}
		return FALSE;
	}

	public function delete($data=array(),$id)
	{
		$del = $this->db->delete('projects', array('id' => $id));

		if($del)
		{
			$this->db->set($data);
			$this->db->set('id',$id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'delete');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_projects');
		}
		return FALSE;
	}
}
