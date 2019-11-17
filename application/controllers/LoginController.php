<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class LoginController extends CI_Controller {

	
	public function __construct()
	{
		parent::__construct();
		$this->load->model('LoginModel');
		$this->load->library('session');
	}
	

	public function index()
	{
		$this->load->view('User/login');
	}

	public function Login()
	{
		if( isset($_POST['login'] ) ){
			$username = $this->input->post('username');
			$password = $this->input->post('password');
			$query = $this->LoginModel->Login($username, $password);
			if ($query->num_rows() > 0) {
				redirect('Admin/index');
			} else {
				echo "<script>alert('Username dan Password tidak cocok');</script>";
				$this->load->view('User/login');
			}
		}
		else{
			echo "<script>alert('Ada Kesalahan');</script>";
			$this->load->view('User/login');
		}
	}

	public function Logout()
    {
        $this->session->sess_destroy();
        redirect('LoginController/index');
    }
}
