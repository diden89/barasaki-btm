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

class About_us_model extends CI_Model {
	public function load_news($url)
	{

		$this->db->select('*');
		$this->db->from('news');
		$this->db->where('is_active', 'Y');
		$this->db->where('id', $url);
		
		return $this->db->get();
	}

	public function load_slider($table,$url)
	{
		$this->db->from($table);
		$this->db->where('is_active', 'Y');
		$this->db->where('is_admin', 'N');
		$this->db->where('url', $url);
		
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

	public function load_article()
	{
		$this->db->where('url', 'about_us');
		$this->db->where('is_active', 'Y');

		return $this->db->get('articles');
	}

}
