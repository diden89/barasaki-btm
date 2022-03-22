<?php
/*!
 * @package Koperasi Bintang Tanjung Madani
 * @copyright Koperasi Bintang Tanjung Madani
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /bintangtanjungmadani/application/module_admin/home/models/home_model.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Home_model extends CI_Model {
	public function get_menu($where=array())
	{
		$this->db->where('rm_is_active', 'Y');
		$this->db->where($where);
		$this->db->order_by('rm_sequence', 'asc');
		
		return $this->db->get('ref_menu');
	}

	public function get_total($table)
	{
		$this->db->select('count(id) as total');
		$this->db->from($table);
		$this->db->where('is_active','Y');

		return $this->db->get();
	}

	public function get_properties($url = '')
	{
		$this->db->where('rm_url', $url);
		$this->db->where('rm_is_active', 'Y');
		$this->db->where('rm_is_admin', 'Y');

		return $this->db->get('ref_menu');
	}

	public function get_total_message($wh)
	{
		$this->db->select('count(id) as total');
		$this->db->where($wh);

		return $this->db->get('message');
	}
	
	public function get_message()
	{
		$this->db->where('is_read','N');   
		
		return $this->db->get('message');
	}

	public function get_company()
	{
		$this->db->where('is_active', 'Y');

		return $this->db->get('company');
	}

}
