<?php
/*!
 * @package Koperasi Bintang Tanjung Madani
 * @copyright Koperasi Bintang Tanjung Madani
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /bintangtanjungmadani/application/module_admin/download/models/download_model.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Download_model extends CI_Model {
	public function get_data()
	{
		$this->db->where('is_active', 'Y');
		$this->db->order_by('id', 'DESC');
		return $this->db->get('download');
	}

	public function get_data_edit($id)
	{		
		$this->db->where('is_active', 'Y');
		$this->db->where('id',$id);

		return $this->db->get('download');
	}
	
	public function get_download($cond)
	{
		$this->db->where('is_active', 'Y');
		$this->db->where('is_admin', $cond);
		return $this->db->get('download');
	}
	
	public function get_download_utama($id)
	{
		$this->db->where('is_active', 'Y');
		$this->db->where('id', $id);
		return $this->db->get('download');
	}
	
	public function do_upload($data = array())
	{
		$result= $this->db->insert('download',$data);
       	
       	$insert_id = $this->db->insert_id();

        if ($result)
		{
			$this->db->set($data);
			$this->db->set('id',$insert_id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'insert');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_download');
		}

		return FALSE;
	}

	public function do_update($data = array(),$id)
	{

		$this->db->set($data);
		$this->db->where('id',$id);

		$update = $this->db->update('download');

		if ($update)
		{
			$this->db->set($data);
			$this->db->set('id',$id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'update');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_download');
		}
		return FALSE;
	}

	public function delete($data=array(),$id)
	{
		$del = $this->db->delete('download', array('id' => $id));

		if($del)
		{
			$this->db->set($data);
			$this->db->set('id',$id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'delete');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_download');
		}
		return FALSE;
	}

}
