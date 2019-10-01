<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	
	public function __construct()
	{
		parent::__construct();
        $this->load->model('LoginModel');
        $this->load->model('AdminModel');
        $this->load->library('session');
	}
    public function index()
    {
        $this->load->view('Admin/index');
    }

    // ORGANISASI
	public function BiografiMJIB()
	{
        $data['biografiMJIB']= $this->AdminModel->BiografiMJIB()->result_array();
        $this->load->view('Admin/Organisasi/BiografiMJIB', $data);
    }
    public function EditBiografiMJIB($id)
    {
        $data['biografiMJIB'] = $this->AdminModel->EditBiografiMJIB($id)->result_array();
        $this->load->view('Admin/Organisasi/EditBiografiMJIB', $data);
    }
    public function UpdateBiografiMJIB($id)
    {
        $data['image'] = $this->input->post('image');
        $data['biografi'] = $this->input->post('biografi');
        $data['judul'] = $this->input->post('judul');
        $data['username'] = $this->input->post('username');
        $data['updated_at'] = $this->input->post('updated_at');
        $this->AdminModel->UpdateBiografiMJIB($id, $data);
        return redirect('Admin/BiografiMJIB','refresh');
    }
//=======================================================================================================================================================//
    public function BiografiPimpinanMJIB()
    {
        $data['biografiPimpinanMJIB']= $this->AdminModel->BiografiPimpinanMJIB()->result_array();
        $this->load->view('Admin/Organisasi/BiografiPimpinanMJIB', $data);
    }
    public function EditBiografiPimpinanMJIB($id)
    {
        $data['biografiPimpinanMJIB'] = $this->AdminModel->EditBiografiPimpinanMJIB($id)->result_array();
        $this->load->view('Admin/Organisasi/EditBiografiPimpinanMJIB', $data);
    }
    public function UpdateBiografiPimpinanMJIB($id)
    {
        $data['image'] = $this->input->post('image');
        $data['biografi'] = $this->input->post('biografi');
        $data['judul'] = $this->input->post('judul');
        $data['username'] = $this->input->post('username');
        $data['updated_at'] = $this->input->post('updated_at');
        $this->AdminModel->UpdateBiografiPimpinanMJIB($id, $data);
        return redirect('Admin/BiografiPimpinanMJIB','refresh');
    }

    // TAUSIAH
    public function AqidatulAwam()
    {
        $this->load->view('Admin/Tausiah/AqidatulAwam');
    }
    public function BidayatulHidayah()
    {
        $this->load->view('Admin/Tausiah/BidayatulHidayah');
    }
    public function IhyaUlumuddin()
    {
        $this->load->view('Admin/Tausiah/IhyaUlumuddin');
    }
    public function KitabRiyadushSholihin()
    {
        $this->load->view('Admin/Tausiah/KitabRiyadushSholihin');
    }
    public function NashoihDiniyah()
    {
        $this->load->view('Admin/Tausiah/NashoihDiniyah');
    }
    public function SyarahHadistJibril()
    {
        $this->load->view('Admin/Tausiah/SyarahHadistJibril');
    }
    public function SyarahRatibAlHaddad()
    {
        $this->load->view('Admin/Tausiah/SyarahRatibAlHaddad');
    }

    // JADWAL MJIB
    public function JadwalAbuya()
    {
        $this->load->view('Admin/JadwalMJIB/JadwalAbuya');
    }

    //MEDIA
    public function SocialMedia()
    {
        $this->load->view('Admin/Media/SocialMedia');
    }
    public function Qasidah()
    {
        $this->load->view('Admin/Media/Qasidah');
    }

    //EVENT
    public function Event()
    {
        $this->load->view('Admin/Event/Event');
    }

    // DOKUMENTASI
    public function Foto()
    {
        $this->load->view('Admin/Dokumentasi/Foto');
    }
    public function Video()
    {
        $this->load->view('Admin/Dokumentasi/Video');
    }
}
