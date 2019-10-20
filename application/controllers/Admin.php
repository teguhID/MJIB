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

    // =================================>>>>== ORGANISASI ==<<<<================================== //
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
        $imageName = $this->db->where('id', '1')->get('biografi_mjib')->row()->image;
        $data['biografi'] = $this->input->post('biografi');
        $data['judul'] = $this->input->post('judul');
        $data['username'] = $this->input->post('username');
        $data['updated_at'] = $this->input->post('updated_at');
        
        if ($_FILES['image']['size'] == 0) {
            $data['image'] = $this->input->post('imageVal');
        } 
        else {
            unlink('./assets/admin/img/biografi/'. $imageName);
            $data['image'] = str_replace(' ', '_', date("dmyhis") . $_FILES['image']['name']);
            $config['upload_path'] = './assets/admin/img/biografi/';
            $config['allowed_types'] = 'jpg|png|gif|jpeg';
            $config['file_name'] = $data['image'];
            $this->load->library('upload', $config);
            if ( ! $this->upload->do_upload('image'))
            {
                    array('error' => $this->upload->display_errors());
            }
            else
            {
                    array('upload_data' => $this->upload->data());
            }
        }

        $this->AdminModel->UpdateBiografiMJIB($id, $data);
        return redirect('Admin/BiografiMJIB','refresh');
    }
                //===================================================================================//
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
        $imageName = $this->db->where('id', '1')->get('biografi_pimpinan_mjib')->row()->image;
        $data['biografi'] = $this->input->post('biografi');
        $data['judul'] = $this->input->post('judul');
        $data['username'] = $this->input->post('username');
        $data['updated_at'] = $this->input->post('updated_at');

        if ($_FILES['image']['size'] == 0) {
            $data['image'] = $this->input->post('imageVal');
        } 
        else {
            unlink('./assets/admin/img/biografi/'. $imageName);
            $data['image'] = str_replace(' ', '_', date("dmyhis") . $_FILES['image']['name']);
            $config['upload_path'] = './assets/admin/img/biografi/';
            $config['allowed_types'] = 'jpg|png|gif|jpeg';
            $config['file_name'] = $data['image'];
            $this->load->library('upload', $config);
            if ( ! $this->upload->do_upload('image'))
            {
                    array('error' => $this->upload->display_errors());
            }
            else
            {
                    array('upload_data' => $this->upload->data());
            }
        }

        $this->AdminModel->UpdateBiografiPimpinanMJIB($id, $data);
        return redirect('Admin/BiografiPimpinanMJIB','refresh');
    }
    // =================================>>>>== ORGANISASI ==<<<<================================== //

    // =================================>>>>== TAUSIAH ==<<<<================================== //

    // ============================================ Bidayatul Hidayah ============================================ //
    public function BidayatulHidayah()
    {
        $data['bidayatulHidayah'] = $this->AdminModel->BidayatulHidayahList()->result_array();
        $this->load->view('Admin/Tausiah/BidayatulHidayah/BidayatulHidayah', $data);
    }
    public function BidayatulHidayahHalamanBuatData()
    {
        $this->load->view('Admin/Tausiah/BidayatulHidayah/TambahData');
    }
    public function BidayatulHidayahBuatData()
    {
        $data['image'] = $this->input->post('image');
        $data['judul'] = $this->input->post('judul');
        $data['content'] = $this->input->post('content');
        $data['username'] = $this->input->post('username');
        $data['updated_at'] = $this->input->post('updated_at');

        if ($_FILES['image']['size'] == 0) {
            $data['image'] = $this->input->post('imageVal');
        } 
        else {
            $data['image'] = str_replace(' ', '_', date("dmyhis") . $_FILES['image']['name']);
            $config['upload_path'] = './assets/admin/img/bidayatulHidayah/';
            $config['allowed_types'] = 'jpg|png|gif|jpeg';
            $config['file_name'] = $data['image'];
            $this->load->library('upload', $config);
            if ( ! $this->upload->do_upload('image'))
            {
                    array('error' => $this->upload->display_errors());
            }
            else
            {
                    array('upload_data' => $this->upload->data());
            }
        }

        $this->AdminModel->BidayatulHidayahCreate($data);
        return redirect('Admin/BidayatulHidayah', 'refresh');
    }
    public function BidayatulHidayahHalamanEditData($id)
    {
        $data['BidayatulHidayah'] = $this->AdminModel->BidayatulHidayahDetail($id)->result_array();
        $this->load->view('Admin/Tausiah/BidayatulHidayah/EditData', $data);
    }
    public function BidayatulHidayahEditData($id)
    {
        $imageName =  $this->input->post('imageVal');
        $data['judul'] = $this->input->post('judul');
        $data['content'] = $this->input->post('content');
        $data['username'] = $this->input->post('username');
        $data['updated_at'] = $this->input->post('updated_at');

        if ($_FILES['image']['size'] == 0) {
            $data['image'] = $imageName;
        } 
        else {
            unlink('./assets/admin/img/bidayatulHidayah/'. $imageName);
            $data['image'] = str_replace(' ', '_', date("dmyhis") . $_FILES['image']['name']);
            $config['upload_path'] = './assets/admin/img/bidayatulHidayah/';
            $config['allowed_types'] = 'jpg|png|gif|jpeg';
            $config['file_name'] = $data['image'];
            $this->load->library('upload', $config);
            if ( ! $this->upload->do_upload('image'))
            {
                    array('error' => $this->upload->display_errors());
            }
            else
            {
                    array('upload_data' => $this->upload->data());
            }
        }

        $this->AdminModel->BidayatulHidayahUpdate($id, $data);
        return redirect('Admin/DetailBidayatulHidayah/' . $id, 'refresh');
    }
    public function DetailBidayatulHidayah($id)
    {
        $data['BidayatulHidayah'] = $this->AdminModel->BidayatulHidayahDetail($id)->result_array();
        $this->load->view('Admin/Tausiah/BidayatulHidayah/DetailData', $data);
    }
    public function BidayatulHidayahHapus($id)
    {
        $this->AdminModel->BidayatulHidayahDelete($id);
        return redirect('Admin/BidayatulHidayah', 'refresh');
    }
    // ============================================ Bidayatul Hidayah ============================================ //

    // ============================================ Ihya Ulumuddin =============================================== // 
    public function IhyaUlumuddin()
    {
        // $data['IhyaUlumuddinList'] = $this->AdminModel->IhyaUlumuddinList()->result_array();
        // $this->load->view('Admin/Tausiah/IhyaUlumuddin/IhyaUlumuddin', $data);
    }
    // ============================================ Ihya Ulumuddin =============================================== //    
    public function AqidatulAwam()
    {
        $this->load->view('Admin/Tausiah/AqidatulAwam');
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
    // =================================>>>>== TAUSIAH ==<<<<================================== //
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
