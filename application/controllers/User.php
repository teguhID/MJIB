<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
        $this->load->model('LoginModel');
        $this->load->model('AdminModel');
		$this->load->library('session');
	}
	
	public function index()
	{
		$this->load->view('User/index');
		// $this->load->view('test');
	}
	public function Guru()
	{
		$this->load->view('User/About');
	}
	public function Tausiah()
	{
		$data['tausiahData'] = $this->AdminModel->ListTausiah('tausiah')->result_array();
		$this->load->view('User/tausiah', $data);
	}
	public function Jadwal()
	{
		$data['jadwalData'] = $this->AdminModel->ListJadwal('jadwal')->result_array();
		$this->load->view('User/jadwal', $data);
	}
	public function Event()
	{
		$data['eventData'] = $this->AdminModel->ListEvent('event')->result_array();
		$this->load->view('User/event', $data);
	}
	public function Media()
	{
		$this->load->view('User/Media');
	}
	public function Login()
	{
		$this->load->view('User/login');
	}
	public function Gallery()
	{
		$this->load->view('User/Gallery');
	}
	public function Audio()
	{
		$this->load->view('User/Audio');
	}
	public function Video()
	{
		$this->load->view('User/Video');
	}
}