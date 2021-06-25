<?php
/*!
 * @package PT. Barasaki Sinergi Semesta
 * @copyright PT. Barasaki Sinergi Semesta
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /barasaki-btm/application/module_admin/about_us/models/About_us_model.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Products_model extends CI_Model {
	public function get_data()
	{
		$this->db->select('*,a.id as products_id');
		$this->db->from('products a');
		$this->db->join('category b','a.category_id = b.id','left');
		$this->db->join('products_image c','a.id = c.products_id','left');
		$this->db->where('a.is_active', 'Y');
		// $this->db->where('b.is_active', 'Y');
		// $this->db->where('c.is_active', 'Y');
		$this->db->order_by('a.id', 'ASC');
		// $this->db->group_by('a.id');

		return $this->db->get();
	}

	public function get_data_edit($id)
	{
		$this->db->select('*,a.id as products_id');
		$this->db->from('products a');
		$this->db->join('category b','a.category_id = b.id','left');
		$this->db->join('products_image c','a.id = c.products_id','left');
		$this->db->where('a.is_active', 'Y');
		// $this->db->where('b.is_active', 'Y');
		// $this->db->where('c.is_active', 'Y');
		$this->db->where('a.id',$id);
		$this->db->order_by('a.id', 'ASC');

		return $this->db->get();
	}

	public function get_category()
	{
		$this->db->where('is_active', 'Y');
		$this->db->where('type', 'product');
		return $this->db->get('category');
	}

	public function get_img_prod($id)
	{
		$this->db->where($id);
		return $this->db->get('products_image');
	}

	public function do_upload($data = array())
	{
		$result= $this->db->insert('products',$data);
       	
       	$insert_id = $this->db->insert_id();

        if ($result)
		{
			$this->db->set($data);
			$this->db->set('id',$insert_id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'insert');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			$this->db->insert('log_products');
		}

		return $insert_id;
	}

	public function do_upload_image($data = array())
	{
		$result= $this->db->insert('products_image',$data);
     	
     	return $result?true:false;
	}

	public function do_update($data = array(),$id)
	{
		$this->db->set($data);
		$this->db->where('id',$id);

		$update = $this->db->update('products');

		if ($update)
		{
			$this->db->set($data);
			$this->db->set('id',$id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'update');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_products');
		}
		return FALSE;
	}

	public function delete($data=array(),$id)
	{
		$del = $this->db->delete('products', array('id' => $id));

		if($del)
		{
			$this->db->set($data);
			$this->db->set('id',$id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'delete');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_products');
		}
		return FALSE;
	}

	public function del_img_prod($id)
	{
		$del = $this->db->delete('products_image', $id);
		return $del;
	}
}
