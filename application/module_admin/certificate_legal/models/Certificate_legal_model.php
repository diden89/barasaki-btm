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

class Certificate_legal_model extends CI_Model {
	
	public function get_data($limit,$start)
	{
		if( ! empty($limit))
		{
			$this->db->limit($limit,$start);
		}

		return $this->db->get('company_legal');
	}

	public function get_data_edit($id)
	{	
		$this->db->where('id', $id);
		return $this->db->get('company_legal');
	}
	
	public function get_data_icon()
	{
		$this->db->where('is_active', 'Y');
		return $this->db->get('icon');
	}

	public function do_upload($data = array())
	{
		$result= $this->db->insert('company_legal',$data);
       	
       	$insert_id = $this->db->insert_id();

        if ($result)
		{
			$this->db->set($data);
			$this->db->set('id',$insert_id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'insert');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_company_legal');
		}

		return FALSE;
	}

	public function do_update($data = array(),$id)
	{

		$this->db->set($data);
		$this->db->where('id',$id);

		$update = $this->db->update('company_legal');

		if ($update)
		{
			$this->db->set($data);
			$this->db->set('id',$id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'update');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_company_legal');
		}
		return FALSE;
	}

}
