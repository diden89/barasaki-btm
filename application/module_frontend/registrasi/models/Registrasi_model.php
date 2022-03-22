<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package Koperasi Bintang tanjuang Madani
 * @copyright Koperasi Bintang tanjuang Madani
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /bintangtanjuangmadani/application/module_frontend/project/models/Registrasi_model.php
 */

class Registrasi_model extends CI_Model {

	public function cek_no_reg()
	{
		$this->db->select('LEFT(ur_no_reg,8) as notrx');
		$this->db->order_by('ur_id', 'DESC');
		$this->db->limit('1');
		
		return $this->db->get('user_registration');
 	}

 	public function do_upload($data = array())
	{
		$result= $this->db->insert('user_registration',$data);
       	
       	$insert_id = $this->db->insert_id();

        if ($result)
		{
			$this->db->set($data);
			$this->db->set('ur_id',$insert_id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'insert');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_user_registration');
		}

		return FALSE;
	}
 	
	public function get_data_anggota()
	{
		$this->db->where('ur_is_active','Y');
		// $this->db->order_by('ur_no_reg','DESC');
		
		return $this->db->get('user_registration');
	}

	public function load_head_content($url)
	{
		$this->db->select('*');
		$this->db->where('url',$url);
		
		return $this->db->get('menu');
	}
	
	public function input_data($table,$data)
	{
		$this->db->set('date','NOW()',FALSE);
		return $this->db->insert($table,$data);
	}
}
