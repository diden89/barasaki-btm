<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package Barasaki Semesta
 * @copyright Barasaki Semesta
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /barasaki-btm/application/module_frontend/project/models/project_model.php
 */

class Project_model extends CI_Model {
	
	public function load_project()
	{
		$this->db->select('a.*,b.*');
		$this->db->from('projects a');
		$this->db->join('category b', 'a.category_id = b.id');
		$this->db->where('a.is_active', 'Y');

		return $this->db->get();
	}
	
	public function load_company($table, $id)
	{
		$this->db->from($table);
		
		if ( ! empty($id))
		{
			$this->db->where('id_perusahaan', $id);
		}
		
		return $this->db->get();
	}

	public function load_slider($url)
	{
		$this->db->from('menu');
		$this->db->where('is_active', 'Y');
		$this->db->where('is_admin', 'N');
		$this->db->where('url', $url);
		
		return $this->db->get();
	}
}
