<?php
/*!
 * @package Koperasi Bintang Tanjung Madani
 * @copyright Koperasi Bintang Tanjung Madani
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /bintangtanjungmadani/application/module_admin/about_us/models/About_us_model.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Users_model extends CI_Model {
	public function get_data()
	{
		$this->db->from('user_detail ud');
		$this->db->join('user_sub_group usg','ud.ud_sub_group = usg.usg_id','left');
		$this->db->join('user_group ug','usg.usg_group = ug.ug_id','left');
		// $this->db->where('ud.is_active', 'Y');
		$this->db->order_by('ud.ud_id', 'ASC');

		return $this->db->get();
	}

	public function get_data_edit($id)
	{
		
		$this->db->from('user_detail ud');
		$this->db->join('user_sub_group usg','ud.ud_sub_group = usg.usg_id','left');
		$this->db->join('user_group ug','usg.usg_group = ug.ug_id','left');
		$this->db->where('ud.ud_id',$id);

		return $this->db->get();
	}

	public function get_data_for_select($table)
	{
		if($table == 'employee')
		{
			$this->db->where('is_active', 'Y');
			$this->db->where('userid is null');
			$this->db->or_where('userid = ""');
		}
		else
		{
			$this->db->where('usg_is_active', 'Y');
		}
		return $this->db->get($table);
	}
	
	public function get_data_employee($id)
		{
			$this->db->where('is_active', 'Y');
			$this->db->where('userid',$id);
			
			return $this->db->get('employee');
		}

	public function do_upload($data = array())
	{
		$datas['ud_username'] = $data['ud_username'];
		$datas['ud_password'] = $data['ud_password'];
		// $datas['ori_password'] = $data['ori_password'];
		$datas['ud_sub_group'] = $data['ud_sub_group'];
		$datas['ud_is_active'] = $data['ud_is_active'];
	  
		$result= $this->db->insert('user_detail',$datas);
       	
       	$insert_id = $this->db->insert_id();

       	$this->db->set('userid',$insert_id);
       	$this->db->where('id',$data['fullname']);
       	$update = $this->db->update('employee');

        if ($update)
		{
			$this->db->set($datas);
			$this->db->set('ud_id',$insert_id);
			$this->db->set('log_user_id', $this->session->userdata('username'));
			$this->db->set('log_action', 'insert');
			$this->db->set('log_datetime', 'NOW()', FALSE);

			return $this->db->insert('log_user_detail');
		}

		return FALSE;
	}

	public function do_update($data = array(),$id)
	{
		$datas['ud_username'] = $data['ud_username'];
		$datas['ud_password'] = $data['ud_password'];
		// $datas['ori_password'] = $data['ori_password'];
		$datas['ud_sub_group'] = $data['ud_sub_group'];
		$datas['ud_is_active'] = $data['ud_is_active'];

		$this->db->set($datas);
		$this->db->where('ud_id',$id);

		$update = $this->db->update('user_detail');

		if ($update)
		{
			$this->db->set($datas);
			$this->db->set('ud_id',$id);
			$this->db->set('log_user_id', $this->session->userdata('username'));
			$this->db->set('log_action', 'update');
			$this->db->set('log_datetime', 'NOW()', FALSE);

			return $this->db->insert('log_user_detail');
		}
		return FALSE;
	}

	public function delete($data=array(),$id)
	{
		$del = $this->db->delete('user_detail', array('id' => $id));

		if($del)
		{
			$this->db->set($data);
			$this->db->set('id',$id);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'delete');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_user_detail');
		}
		return FALSE;
	}

	public function do_update_employee($data = array())
	{
		$datas['id'] = $data->id;
		$datas['userid'] = $data->userid;
		$datas['position_id'] = $data->position_id;
		$datas['education_id'] = $data->education_id;
		$datas['seq'] = $data->seq;
		$datas['fullname'] = $data->fullname;
		$datas['pob'] = $data->pob;
		$datas['dob'] = $data->dob;
		$datas['phone'] = $data->phone;
		$datas['email'] = $data->email;
		$datas['address'] = $data->address;
		$datas['is_active'] = $data->is_active;
		$datas['img'] = $data->img;
       
		$this->db->set('userid',"");
		$this->db->where('id',$data->id);

		$update = $this->db->update('employee');

		if ($update)
		{
			$this->db->set($datas);
			$this->db->set('log_userid', $this->session->userdata('username'));
			$this->db->set('log_action', 'update');
			$this->db->set('log_created_date', 'NOW()', FALSE);

			return $this->db->insert('log_employee');
		}
		return FALSE;
	}
}
