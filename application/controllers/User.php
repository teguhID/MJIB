<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

	public function index()
	{
		$this->load->view('User/index');
	}
	public function Guru()
	{
		$this->load->view('User/About');
	}
	public function Tausiah()
	{
		$this->load->view('User/tausiah');
	}
	public function Jadwal()
	{
		$this->load->view('User/jadwal');
	}
	public function Event()
	{
		$this->load->view('User/event');
	}
	public function Login()
	{
		$this->load->view('User/login');
	}
}