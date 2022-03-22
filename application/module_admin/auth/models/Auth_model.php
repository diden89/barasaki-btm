<?php
/*!
 * @package Koperasi Bintang Tanjung Madani
 * @copyright Koperasi Bintang Tanjung Madani
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /bintangtanjungmadani/application/module_admin/auth/models/auth_model.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Auth_model extends CI_Model {
	public function validate_login($params = array())
	{
		if (isset($params['txt_username']) && isset($params['txt_password']))
		{
			$this->db->select('*,a.ud_id as ud_id,b.id as e_id');
			$this->db->from('user_detail a');
			$this->db->join('employee b','a.ud_id = b.userid','left');
			$this->db->where('a.ud_is_active', 'Y');
			$this->db->where('b.is_active', 'Y');
			$this->db->where('a.ud_username', $params['txt_username']);
			$this->db->where('a.ud_password', sha1(strtoupper($params['txt_username'].':'.$params['txt_password'])));

			return $this->db->get();
		}
		elseif (isset($params['id']) && isset($params['username']))
		{
			$this->db->select('*,a.ud_id as ud_id,b.id as e_id');
			$this->db->from('user_detail a');
			$this->db->join('employee b','a.ud_id = b.userid','left');
			$this->db->where('a.ud_is_active', 'Y');
			$this->db->where('b.is_active', 'Y');
			$this->db->where('a.ud_id', $params['id']);
			$this->db->where('a.ud_username', $params['username']);

			return $this->db->get();
		}

		return FALSE;
	}
}
