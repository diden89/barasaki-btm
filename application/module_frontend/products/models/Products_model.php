<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package Iwebebs
 * @copyright PT Iwebe Bangun Solusi
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /D/xampp/htdocs/iwebebs/application/module_frontend/products/models/products_model.php
 */

class Products_model extends CI_Model {
	public function load_products($action)
	{

		$this->db->select('a.*,b.*,c.*,a.id as prd_id,b.id as cat_id,c.id as prd_img_id');
		$this->db->from('products a');
		$this->db->join('category b', 'a.category_id = b.id');
		$this->db->join('products_image c', 'a.id = c.products_id');
		$this->db->where('a.is_active', 'Y');
		if($action !== 'show-all')
		{
			$this->db->where('a.category_id', $action);
		}
		$this->db->group_by('a.id');
		return $this->db->get();
	}

	public function load_products_detail($action,$cond)
	{

		$this->db->select('a.*,b.*,c.*,a.id as prd_id,b.id as cat_id,c.id as prd_img_id');
		$this->db->from('products a');
		$this->db->join('category b', 'a.category_id = b.id');
		$this->db->join('products_image c', 'a.id = c.products_id');
		$this->db->where('a.is_active', 'Y');
		if( ! empty($action))
		{
			$this->db->where('a.id', $action);
		}
		if($cond == 'products')
		{
			$this->db->group_by('a.id');
		}
		else
		{
			$this->db->group_by('c.id');	
		}
		
		return $this->db->get();
	}
	
	public function load_category($type)
	{
		$this->db->select('*,(select count(id) from products where category_id = category.id) as total');
		$this->db->where('type',$type);
		$this->db->order_by('id','DESC');
		
		return $this->db->get('category');
	}

	public function load_contact($table,$type)
	{
		$this->db->where('is_active', 'Y');
		$this->db->where('c_url != ""');
		$this->db->where('c_type', $type);
		
		return $this->db->get($table);
	}

	public function load_slider($url)
	{
		$this->db->from('menu');
		$this->db->where('is_active', 'Y');
		$this->db->where('is_admin', 'N');
		$this->db->where('url', $url);
		
		return $this->db->get();
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

	public function get_message()
	{
		$this->db->where('is_read','N');   
		
		return $this->db->get('message');
	}

	public function load_image_products($id,$limit = "")
	{
		$this->db->where('products_id', $id);
		
		if( ! empty($limit))
		{
			$this->db->limit($limit);
		}
		
		return $this->db->get('products_image');
	}

	public function get_products_detail($id)
	{

		$this->db->select('a.*,b.*,a.id as prd_id,b.id as cat_id');
		$this->db->from('products a');
		$this->db->join('category b', 'a.category_id = b.id');
		$this->db->where('a.is_active', 'Y');
		if( ! empty($id))
		{
			$this->db->where('a.id', $id);
		}
		
		return $this->db->get();
	}


	
}
