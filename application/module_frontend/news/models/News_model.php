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

class News_model extends CI_Model {
	
	public function load_news($url)
	{

		$this->db->select('*');
		$this->db->from('news');
		$this->db->where('is_active', 'Y');
		$this->db->where('id', $url);
		
		return $this->db->get();
	}

	public function load_news_by_category($id)
	{

		$this->db->select('*');
		$this->db->from('news');
		$this->db->where('is_active', 'Y');
		$this->db->where('category_id', $id);
		
		return $this->db->get();
	}
	
	public function popular_news()
	{
		$this->db->where('is_active', 'Y');
		$this->db->order_by('count_read','DESC');
		$this->db->limit(3);
		
		return $this->db->get('news');
	}

	public function load_slider($table,$url)
	{
		$newUrl = "services/".$url;
		$this->db->from($table);
		$this->db->where('is_active', 'Y');
		$this->db->where('url', $newUrl);
		
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

	public function get_category($type)
	{
		$this->db->select('*,(select count(id) from news where category_id = category.id  ) as total');
		$this->db->where('type',$type);
		$this->db->order_by('id','DESC');
		
		return $this->db->get('category');
	}
}
