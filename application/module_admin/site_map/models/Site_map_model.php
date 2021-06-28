<?php
/*!
 * @package PT. Barasaki Sinergi Semesta
 * @copyright PT. Barasaki Sinergi Semesta
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /barasaki-btm/application/module_admin/Site_map/models/Site_map_model.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Site_map_model extends CI_Model {
	public function get_data()
	{
		$this->db->select('ut.caption as caption_url,ut.id as ut_id,sm.*');
		$this->db->from('site_map sm');
		$this->db->join('url_target ut','ut.id = sm.ut_id','LEFT');
		$this->db->where('sm.is_active', 'Y');
		return $this->db->get();
	}

	public function get_data_edit($id)
	{		
		$this->db->where('is_active', 'Y');
		$this->db->where('id',$id);

		return $this->db->get('site_map');
	}
	
	public function get_data_target()
	{		
		$this->db->where('is_active', 'Y');
		
		return $this->db->get('url_target');
	}
	
	public function get_site_map($cond)
	{
		$this->db->where('is_active', 'Y');
		$this->db->where('is_admin', $cond);
		return $this->db->get('site_map');
	}
	
	public function get_site_map_utama($id)
	{
		$this->db->where('is_active', 'Y');
		$this->db->where('id', $id);
		return $this->db->get('site_map');
	}
	
	public function do_upload($data = array())
	{
		$result= $this->db->insert('site_map',$data);
       	
       	$insert_id = $this->db->insert_id();

        if ($result)
		{
			$this->db->set($data);
			$this->db->set('id',$insert_id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'insert');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_site_map');
		}

		return FALSE;
	}

	public function do_update($data = array(),$id)
	{

		$this->db->set($data);
		$this->db->where('id',$id);

		$update = $this->db->update('site_map');

		if ($update)
		{
			$this->db->set($data);
			$this->db->set('id',$id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'update');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_site_map');
		}
		return FALSE;
	}

	public function delete($data=array(),$id)
	{
		$del = $this->db->delete('site_map', array('id' => $id));

		if($del)
		{
			$this->db->set($data);
			$this->db->set('id',$id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'delete');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_site_map');
		}
		return FALSE;
	}

}
