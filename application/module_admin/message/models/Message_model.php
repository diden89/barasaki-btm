<?php
/*!
 * @package Iwebebs
 * @copyright PT Iwebe Bangun Solusi
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /iwebebs/application/module_admin/about_us/models/About_us_model.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Message_model extends CI_Model {
	public function get_data($limit,$start,$id)
	{
		$this->db->select('*,concat(first_name," ",last_name) as fullname');
		if( ! empty($id))
		{
			$this->db->where('id',$id);
		}
		if( ! empty($limit))
		{
			$this->db->limit($limit,$start);
		}

		return $this->db->get('message');
	}

	public function get_data_edit($id)
	{
		
		$this->db->select('*,concat(first_name," ",last_name) as fullname');
		$this->db->where('id',$id);

		return $this->db->get('message');
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
		$result= $this->db->insert('articles',$data);
       	
       	$insert_id = $this->db->insert_id();

        if ($result)
		{
			$this->db->set($data);
			$this->db->set('id',$insert_id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'insert');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_articles');
		}

		return FALSE;
	}

	public function do_update($data = array(),$id)
	{

		$this->db->set($data);
		$this->db->where('id',$id);

		$update = $this->db->update('articles');

		if ($update)
		{
			$this->db->set($data);
			$this->db->set('id',$id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'update');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_articles');
		}
		return FALSE;
	}

	public function delete($id)
	{
		$this->db->where('id',$id);
		$del = $this->db->delete('message');

		return $del;
	}

	public function update_message($id)
	{
		$this->db->set('is_read','Y');
		$this->db->where('id',$id);
		return $this->db->update('message');
	
	}


}
