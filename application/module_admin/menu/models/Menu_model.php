<?php
/*!
 * @package PT. Barasaki Sinergi Semesta
 * @copyright PT. Barasaki Sinergi Semesta
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /barasaki-btm/application/module_admin/about_us/models/About_us_model.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Menu_model extends CI_Model {

	public function get_menu($where=array())
	{
		$this->db->where($where);
		$this->db->order_by('rm_sequence', 'asc');
		return $this->db->get('ref_menu');
	}

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
	
	public function store_data($params = array())
	{
		$new_params = array(
			'rm_caption' => $params['rm_caption'],
			'rm_description' => $params['rm_description'],
			'rm_url' => $params['rm_url'],
			'rm_icon' => $params['rm_icon'],
			'rm_parent_id' => (!empty($params['txt_parent_id']) ? $params['txt_parent_id'] : NULL),
			'rm_sequence' => $params['rm_sequence'],
			'rm_is_admin' => $params['rm_is_admin'],
		);

		if ($params['mode'] == 'add') return $this->do_upload($new_params, TRUE);
		else return $this->do_update($new_params, $params['txt_id_menu']);

	}

	public function delete_data($params = array())
	{
		$this->db->set('rm_is_active','N');
		$this->db->where('rm_id',$params['rm_id']);

		$update = $this->db->update('ref_menu');

		// if ($update)
		// {
		// 	$this->db->set($data);
		// 	$this->db->set('rm_id',$id);
		// 	$this->db->set('log_user_id', $this->session->userdata('username'));
		// 	$this->db->set('log_action', 'insert');
		// 	$this->db->set('log_datetime', 'NOW()', FALSE);

		// 	return $this->db->insert('log_ref_menu');
		// }
		return TRUE;
	}
	
	public function get_menu_utama($id)
	{
		$this->db->where('is_active', 'Y');
		$this->db->where('id', $id);
		return $this->db->get('menu');
	}
	
	public function do_upload($data = array())
	{
		$result= $this->db->insert('ref_menu',$data);
       	
       	$insert_id = $this->db->insert_id();

        if ($result)
		{
			$this->db->set($data);
			$this->db->set('rm_id',$insert_id);
			$this->db->set('log_user_id', $this->session->userdata('username'));
			$this->db->set('log_action', 'insert');
			$this->db->set('log_datetime', 'NOW()', FALSE);

			return $this->db->insert('log_ref_menu');
		}

		return FALSE;
	}

	public function do_update($data = array(),$id)
	{

		$this->db->set($data);
		$this->db->where('rm_id',$id);

		$update = $this->db->update('ref_menu');

		if ($update)
		{
			$this->db->set($data);
			$this->db->set('rm_id',$id);
			$this->db->set('log_user_id', $this->session->userdata('username'));
			$this->db->set('log_action', 'insert');
			$this->db->set('log_datetime', 'NOW()', FALSE);

			return $this->db->insert('log_ref_menu');
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
