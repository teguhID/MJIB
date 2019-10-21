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
        $data['bidayatulHidayah'] = $this->AdminModel->ListTausiah('bidayatul_hidayah')->result_array();
        $this->load->view('Admin/Tausiah/BidayatulHidayah/BidayatulHidayah', $data);
    }
    public function BidayatulHidayahHalamanBuatData()
    {
        $this->load->view('Admin/Tausiah/BidayatulHidayah/TambahData');
    }
    public function BidayatulHidayahBuatData()
    {
        $this->CreateDataTausiah('./assets/admin/img/bidayatulHidayah/', 'bidayatul_hidayah', 'Admin/BidayatulHidayah');
    }
    public function BidayatulHidayahHalamanEditData($id)
    {
        $data['BidayatulHidayah'] = $this->AdminModel->DetailTausiah($id, 'bidayatul_hidayah')->result_array();
        $this->load->view('Admin/Tausiah/BidayatulHidayah/EditData', $data);
    }
    public function BidayatulHidayahEditData($id)
    {
        $this->EditDataTausiah( './assets/admin/img/bidayatulHidayah/', 'bidayatul_hidayah', $id, 'Admin/DetailBidayatulHidayah/' );
    }
    public function DetailBidayatulHidayah($id)
    {
        $data['BidayatulHidayah'] = $this->AdminModel->DetailTausiah($id, 'bidayatul_hidayah')->result_array();
        $this->load->view('Admin/Tausiah/BidayatulHidayah/DetailData', $data);
    }
    public function BidayatulHidayahHapus($id , $image)
    {
        unlink('./assets/admin/img/bidayatulHidayah/'. $image);
        $this->AdminModel->DeleteTausiah($id, 'bidayatul_hidayah');
        return redirect('Admin/BidayatulHidayah', 'refresh');
    }
    // ============================================ Bidayatul Hidayah ============================================ //

    // ============================================ Ihya Ulumuddin =============================================== // 
    public function IhyaUlumuddin()
    {
        $data['IhyaUlumuddinList'] = $this->AdminModel->ListTausiah('ihya_ulumuddin')->result_array();
        $this->load->view('Admin/Tausiah/IhyaUlumuddin/IhyaUlumuddin', $data);
    }
    public function IhyaUlumuddinHalamanBuatData()
    {
        $this->load->view('Admin/Tausiah/IhyaUlumuddin/TambahData');
    }
    public function IhyaUlumuddinBuatData()
    {
        $this->CreateDataTausiah('./assets/admin/img/ihyaUlumuddin/', 'ihya_ulumuddin', 'Admin/IhyaUlumuddin');
    }
    public function IhyaUlumuddinHalamanEditData($id)
    {
        $data['IhyaUlumuddin'] = $this->AdminModel->DetailTausiah($id, 'ihya_ulumuddin')->result_array();
        $this->load->view('Admin/Tausiah/IhyaUlumuddin/EditData', $data);
    }
    public function IhyaUlumuddinEditData($id)
    {
        $this->EditDataTausiah( './assets/admin/img/ihyaUlumuddin/', 'ihya_ulumuddin', $id, 'Admin/DetailIhyaUlumuddin/' );
    }
    public function DetailIhyaUlumuddin($id)
    {
        $data['IhyaUlumuddin'] = $this->AdminModel->DetailTausiah($id, 'ihya_ulumuddin')->result_array();
        $this->load->view('Admin/Tausiah/IhyaUlumuddin/DetailData', $data);
    }
    public function IhyaUlumuddinHapus($id, $image)
    {
        unlink('./assets/admin/img/ihyaUlumuddin/'. $image);
        $this->AdminModel->DeleteTausiah($id, 'ihya_ulumuddin');
        return redirect('Admin/IhyaUlumuddin', 'refresh');
    }
    // ============================================ Ihya Ulumuddin =============================================== //    

    // ============================================ Riyadush Sholihin =============================================== // 
    public function RiyadushSholihin()
    {
        $data['RiyadushSholihinList'] = $this->AdminModel->ListTausiah('riyadush_sholihin')->result_array();
        $this->load->view('Admin/Tausiah/RiyadushSholihin/RiyadushSholihin', $data);
    }
    public function RiyadushSholihinHalamanBuatData()
    {
        $this->load->view('Admin/Tausiah/RiyadushSholihin/TambahData');
    }
    public function RiyadushSholihinBuatData()
    {
        $this->CreateDataTausiah('./assets/admin/img/riyadushSholihin/', 'riyadush_sholihin', 'Admin/RiyadushSholihin');
    }
    public function RiyadushSholihinHalamanEditData($id)
    {
        $data['RiyadushSholihin'] = $this->AdminModel->DetailTausiah($id, 'riyadush_sholihin')->result_array();
        $this->load->view('Admin/Tausiah/RiyadushSholihin/EditData', $data);
    }
    public function RiyadushSholihinEditData($id)
    {
        $this->EditDataTausiah( './assets/admin/img/riyadushSholihin/', 'riyadush_sholihin', $id, 'Admin/DetailRiyadushSholihin/' );
    }
    public function DetailRiyadushSholihin($id)
    {
        $data['RiyadushSholihin'] = $this->AdminModel->DetailTausiah($id, 'riyadush_sholihin')->result_array();
        $this->load->view('Admin/Tausiah/RiyadushSholihin/DetailData', $data);
    }
    public function RiyadushSholihinHapus($id, $image)
    {
        unlink('./assets/admin/img/riyadushSholihin/'. $image);
        $this->AdminModel->DeleteTausiah($id, 'riyadush_sholihin');
        return redirect('Admin/RiyadushSholihin', 'refresh');
    }
    // ============================================ Riyadush Sholihin =============================================== //    



    // ============================================ Nashoih Diniyah =============================================== //    
    public function NashoihDiniyah()
    {
        $data['NashoihDiniyahList'] = $this->AdminModel->ListTausiah('nashoih_diniyah')->result_array();
        $this->load->view('Admin/Tausiah/NashoihDiniyah/NashoihDiniyah', $data);
    }
    public function NashoihDiniyahHalamanBuatData()
    {
        $this->load->view('Admin/Tausiah/NashoihDiniyah/TambahData');
    }
    public function NashoihDiniyahBuatData()
    {
        $this->CreateDataTausiah('./assets/admin/img/nashoihDiniyah/', 'nashoih_diniyah', 'Admin/NashoihDiniyah');
    }
    public function NashoihDiniyahHalamanEditData($id)
    {
        $data['NashoihDiniyah'] = $this->AdminModel->DetailTausiah($id, 'nashoih_diniyah')->result_array();
        $this->load->view('Admin/Tausiah/NashoihDiniyah/EditData', $data);
    }
    public function NashoihDiniyahEditData($id)
    {
        $this->EditDataTausiah( './assets/admin/img/nashoihDiniyah/', 'nashoih_diniyah', $id, 'Admin/DetailNashoihDiniyah/' );
    }
    public function DetailNashoihDiniyah($id)
    {
        $data['NashoihDiniyah'] = $this->AdminModel->DetailTausiah($id, 'nashoih_diniyah')->result_array();
        $this->load->view('Admin/Tausiah/NashoihDiniyah/DetailData', $data);
    }
    public function NashoihDiniyahHapus($id, $image)
    {
        unlink('./assets/admin/img/nashoihDiniyah/'. $image);
        $this->AdminModel->DeleteTausiah($id, 'nashoih_diniyah');
        return redirect('Admin/NashoihDiniyah', 'refresh');
    }
    // ============================================ Nashoih Diniyah =============================================== //    

     // ============================================ Syarah Hadist Jibril =============================================== //    
     public function SyarahHadistJibril()
     {
         $data['SyarahHadistJibrilList'] = $this->AdminModel->ListTausiah('syarah_hadist_jibril')->result_array();
         $this->load->view('Admin/Tausiah/SyarahHadistJibril/SyarahHadistJibril', $data);
     }
     public function SyarahHadistJibrilHalamanBuatData()
     {
         $this->load->view('Admin/Tausiah/SyarahHadistJibril/TambahData');
     }
     public function SyarahHadistJibrilBuatData()
     {
         $this->CreateDataTausiah('./assets/admin/img/syarahHadistJibril/', 'syarah_hadist_jibril', 'Admin/SyarahHadistJibril');
     }
     public function SyarahHadistJibrilHalamanEditData($id)
     {
         $data['SyarahHadistJibril'] = $this->AdminModel->DetailTausiah($id, 'syarah_hadist_jibril')->result_array();
         $this->load->view('Admin/Tausiah/SyarahHadistJibril/EditData', $data);
     }
     public function SyarahHadistJibrilEditData($id)
     {
        $this->EditDataTausiah( './assets/admin/img/syarahHadistJibril/', 'syarah_hadist_jibril', $id, 'Admin/DetailSyarahHadistJibril/' );
     }
     public function DetailSyarahHadistJibril($id)
     {
         $data['SyarahHadistJibril'] = $this->AdminModel->DetailTausiah($id, 'syarah_hadist_jibril')->result_array();
         $this->load->view('Admin/Tausiah/SyarahHadistJibril/DetailData', $data);
     }
     public function SyarahHadistJibrilHapus($id, $image)
     {
         unlink('./assets/admin/img/syarahHadistJibril/'. $image);
         $this->AdminModel->DeleteTausiah($id, 'syarah_hadist_jibril');
         return redirect('Admin/SyarahHadistJibril', 'refresh');
     }
     // ============================================ Syarah Hadist Jibril =============================================== //    

      // ============================================ Syarah Ratib AlHaddad =============================================== //    
      public function SyarahRatibAlHaddad()
      {
          $data['SyarahRatibAlHaddadList'] = $this->AdminModel->ListTausiah('syarah_ratib_alhaddad')->result_array();
          $this->load->view('Admin/Tausiah/SyarahRatibAlHaddadList/SyarahRatibAlHaddad', $data);
      }
      public function SyarahRatibAlHaddadHalamanBuatData()
      {
          $this->load->view('Admin/Tausiah/SyarahHadistJibril/TambahData');
      }
      public function SyarahRatibAlHaddadBuatData()
      {
          $this->CreateDataTausiah('./assets/admin/img/syarahHadistJibril/', 'syarah_hadist_jibril', 'Admin/SyarahHadistJibril');
      }
      public function SyarahRatibAlHaddadHalamanEditData($id)
      {
          $data['SyarahHadistJibril'] = $this->AdminModel->DetailTausiah($id, 'syarah_hadist_jibril')->result_array();
          $this->load->view('Admin/Tausiah/SyarahHadistJibril/EditData', $data);
      }
      public function SyarahRatibAlHaddadEditData($id)
      {
         $this->EditDataTausiah( './assets/admin/img/syarahHadistJibril/', 'syarah_hadist_jibril', $id, 'Admin/DetailSyarahHadistJibril/' );
      }
      public function DetailSyarahRatibAlHaddad($id)
      {
          $data['SyarahHadistJibril'] = $this->AdminModel->DetailTausiah($id, 'syarah_hadist_jibril')->result_array();
          $this->load->view('Admin/Tausiah/SyarahHadistJibril/DetailData', $data);
      }
      public function SyarahRatibAlHaddadHapus($id, $image)
      {
          unlink('./assets/admin/img/syarahHadistJibril/'. $image);
          $this->AdminModel->DeleteTausiah($id, 'syarah_hadist_jibril');
          return redirect('Admin/SyarahHadistJibril', 'refresh');
      }
      // ============================================ Syarah Ratib AlHaddad =============================================== //    

    public function AqidatulAwam()
    {
        $this->load->view('Admin/Tausiah/AqidatulAwam');
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






    // $path = directory penyimpanan foto
    // $tabel = tabel database yang akan di edit
    // $redirect = redirect function halaman awal
    public function CreateDataTausiah($path, $tabel, $redirect)
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
            $config['upload_path'] = $path;
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

        $this->AdminModel->CreateTausiah($data, $tabel);
        return redirect($redirect, 'refresh');
    }

    // $path = directory penyimpanan foto
    // $tabel = tabel database yang akan di edit
    // $id = passing id ke model
    // $redirect = redirect function halaman awal
     public function EditDataTausiah($path, $tabel, $id, $redirect)
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
            if ($imageName == null) {
                
            }
            else {
                unlink($path . $imageName);
            }
            $data['image'] = str_replace(' ', '_', date("dmyhis") . $_FILES['image']['name']);
            $config['upload_path'] = $path;
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
        $this->AdminModel->UpdateTausiah($id, $data, $tabel);
        return redirect($redirect . $id, 'refresh');
     }
}
