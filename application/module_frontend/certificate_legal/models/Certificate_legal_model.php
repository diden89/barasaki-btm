<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package Iwebebs
 * @copyright PT Iwebe Bangun Solusi
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /D/xampp/htdocs/iwebebs/application/module_frontend/services/models/services_model.php
 */

class Certificate_legal_model extends CI_Model {

	public function load_certificate($id)
	{
		if($id != "")
		{
			$this->db->where('id', $id);
		}
		$this->db->where('is_active', 'Y');
		return $this->db->get('company_legal');
	}
	
	public function load_slider($table,$id)
	{
		$this->db->where('url', $id);
		$this->db->where('is_admin', 'N');
		
		return $this->db->get($table);
	}

	public function get_menu($url)
	{
		$this->db->where('url',$url);   
		
		return $this->db->get('menu');
	}

	public function load_initcap($table, $data)
	{
		$this->db->select($data['select']);
		$this->db->from($table);
		
		if (isset($data['where']))
		{
			$this->db->where($data['where']);   
		}

		return $this->db->get();
	}
}
