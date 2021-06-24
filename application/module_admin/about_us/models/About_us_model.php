<?php
/*!
 * @package Barasaki Semesta
 * @copyright Barasaki Semesta
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /barasaki-btm/application/module_admin/about_us/models/About_us_model.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class About_us_model extends CI_Model {
	public function get_data()
	{
		$this->db->where('url', 'about_us');
		$this->db->where('is_active', 'Y');

		return $this->db->get('articles');
	}

	public function store_data($params = array())
	{
		$this->db->set('title', $params['txt_title']);
		$this->db->set('content', $params['txt_content']);
		$this->db->where('id', $params['id_article']);

		$update = $this->db->update('articles');

		if ($update)
		{
			$this->db->set('id', 1);
			$this->db->set('title', $params['txt_title']);
			$this->db->set('content', $params['txt_content']);
			$this->db->set('url', 'about_us');
			$this->db->set('is_active', 'Y');
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'update');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_articles');
		}

		return FALSE;
	}
}
