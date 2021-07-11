<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package PT. Barasaki Sinergi Semesta
 * @copyright PT. Barasaki Sinergi Semesta
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /D/xampp/htdocs/iwebebs/application/module_frontend/services/models/services_model.php
 */

class Pages_model extends CI_Model {
	
	public function load_pages($where = array())
	{
		$this->db->where('is_active', 'Y');
		$this->db->where($where);
		
		return $this->db->get('pages');
	}

	public function load_slider($table,$url)
	{
		$this->db->from($table);
		$this->db->where('is_active', 'Y');
		$this->db->where('is_admin', 'N');
		$this->db->where('url', $url);
		
		return $this->db->get();
	}

	public function get_data_customer()
	{
		$this->db->where('is_active', 'Y');		
		return $this->db->get('customer');
	}
	public function get_data_employee()
	{
		$this->db->select('e.*, p.caption');		
		$this->db->from('employee e');		
		$this->db->join('position p','e.position_id = p.id', 'LEFT');		
		$this->db->where('e.is_active', 'Y');		
		return $this->db->get();
	}

	public function get_count_read($url)
	{

		$this->db->select('count_read');
		$this->db->from('news');
		$this->db->where('id', $url);
		
		return $this->db->get();
	}

	public function update_data($table,$data,$id)
	{
		$this->db->set($data);
		$this->db->where($id);
		
		return $this->db->update($table);
	}

	// public function load_article()
	// {
	// 	$this->db->where('url', 'about_us');
	// 	$this->db->where('is_active', 'Y');

	// 	return $this->db->get('articles');
	// }

}
