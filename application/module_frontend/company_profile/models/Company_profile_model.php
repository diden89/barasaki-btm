<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package Koperasi Bintang tanjuang Madani
 * @copyright Koperasi Bintang tanjuang Madani
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /bintangtanjuangmadani/application/module_frontend/Company_profile/models/Company_profile_model.php
 */

class Company_profile_model extends CI_Model {
	public function get_data()
	{
		$this->db->where('is_active','Y');		
		return $this->db->get('download');
	}
	
	public function input_data($table,$data)
	{
		$this->db->set('date','NOW()',FALSE);
		return $this->db->insert($table,$data);
	}
}
