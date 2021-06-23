<?php
/*!
 * @package Iwebebs
 * @copyright PT Iwebe Bangun Solusi
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /iwebebs/application/module_admin/auth/controllers/Auth.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends MY_Controller {
	private $_header = array();

	function __construct()
	{
		parent::__construct(array(
			'auth' => FALSE
		));
	}

	public function index()
	{
		$this->_view('auth_view');
	}

	public function login()
	{

		// echo sha1(strtoupper($_POST['txt_username'].':'.$_POST['txt_password']));exit;
		if (isset($_POST['action']) && $_POST['action'] == 'login')
		{
			$post = $this->input->post(NULL, TRUE);
			$login = $this->validate_login($post);
			
			$result = array();

			if ($login['success'] !== FALSE)
			{
				redirect('');
			}
			else
			{
				$this->_header['msg'] = 'Data is invalid';

				$this->_view('auth_view');
			}
		}
		else
		{
			show_404();
		}
	}

	public function logout()
	{
		$this->do_logout();
	}

	private function _view($view)
	{
		$this->_header['title'] = isset($this->_header['title']) ? $this->_header['title'] : TITLE;
		
		$this->load->view($view, $this->_header);
	}
}