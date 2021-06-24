<?php
/*!
 * @package Barasaki Semesta
 * @copyright Barasaki Semesta
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /barasaki-btm/application/module_admin/home/models/home_model.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Home_model extends CI_Model {
	public function get_menu()
	{
		$this->db->where('is_active', 'Y');
		$this->db->where('is_admin', 'Y');
		
		return $this->db->get('menu');
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
		$this->db->where('url', $url);
		$this->db->where('is_active', 'Y');
		$this->db->where('is_admin', 'Y');

		return $this->db->get('menu');
	}

	public function get_total_message($wh)
	{
		$this->db->select('count(id) as total');
		$this->db->where($wh);

		return $this->db->get('message');
	}
}
