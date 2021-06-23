<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package Iwebebs
 * @copyright PT Iwebe Bangun Solusi
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /iwebebs/application/module_frontend/project/models/project_model.php
 */

class Contact_model extends CI_Model {
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
