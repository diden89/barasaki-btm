<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package PT. Barasaki Sinergi Semesta
 * @copyright PT. Barasaki Sinergi Semesta
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /barasaki-btm/application/module_frontend/Company_profile/models/Company_profile_model.php
 */

class Company_profile_model extends CI_Model {
	public function get_data()
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
