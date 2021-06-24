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

class Employee_model extends CI_Model {
	public function get_data($limit,$start)
	{
		$this->db->select('e.*,e.id as e_id,ed.caption as e_caption,p.caption as p_caption');
		$this->db->from('employee e');
		$this->db->join('education ed','e.education_id = ed.id','left');
		$this->db->join('position p','e.position_id = p.id','left');
		// $this->db->where('e.is_active', 'Y');
		// $this->db->where('ed.is_active', 'Y');
		$this->db->where('p.is_active', 'Y');
		$this->db->order_by('e.id', 'ASC');

		if( ! empty($limit))
		{
			$this->db->limit($limit,$start);
		}

		return $this->db->get();
	}

	public function get_data_edit($id)
	{
		
		$this->db->select('e.*,e.id as e_id,ed.id as ed_id,p.id as p_id,ed.caption as ed_caption,p.caption as p_caption');
		$this->db->from('employee e');
		$this->db->join('education ed','e.education_id = ed.id','left');
		$this->db->join('position p','e.position_id = p.id','left');
		$this->db->where('e.is_active', 'Y');
		$this->db->where('ed.is_active', 'Y');
		$this->db->where('p.is_active', 'Y');
		$this->db->where('e.id',$id);

		return $this->db->get();
	}

	public function get_category()
	{
		$this->db->where('is_active', 'Y');
		return $this->db->get('category');
	}

	public function get_data_for_select($table)
	{
		$this->db->where('is_active', 'Y');
		return $this->db->get($table);
	}

	public function do_upload($data = array())
	{
		$result= $this->db->insert('employee',$data);
       	
       	$insert_id = $this->db->insert_id();

        if ($result)
		{
			$this->db->set($data);
			$this->db->set('id',$insert_id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'insert');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_employee');
		}

		return FALSE;
	}

	public function do_update($data = array(),$id)
	{
		$this->db->set($data);
		$this->db->where('id',$id);

		$update = $this->db->update('employee');

		if ($update)
		{
			$this->db->set($data);
			$this->db->set('id',$id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'update');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_employee');
		}
		return FALSE;
	}

	public function delete($data=array(),$id)
	{
		$del = $this->db->delete('employee', array('id' => $id));

		if($del)
		{
			$this->db->set($data);
			$this->db->set('id',$id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'delete');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_employee');
		}
		return FALSE;
	}
}
