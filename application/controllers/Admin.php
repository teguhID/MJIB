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


    // =================================>>>>== ABOUT ==<<<<================================== //
	public function BiografiMJIB()     //  MJIB  //
	{
        $data['biografiMJIB']= $this->AdminModel->BiografiMJIB()->result_array();
        $this->load->view('Admin/Organisasi/BiografiMJIB', $data);
    }
    public function EditBiografiMJIB($id)   //  MJIB  //
    {
        $data['biografiMJIB'] = $this->AdminModel->EditBiografiMJIB($id)->result_array();
        $this->load->view('Admin/Organisasi/EditBiografiMJIB', $data);
    }
    public function UpdateBiografiMJIB($id) //  MJIB  //
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
    public function BiografiPimpinanMJIB()  //  GURU  //
    {
        $data['biografiPimpinanMJIB']= $this->AdminModel->BiografiPimpinanMJIB()->result_array();
        $this->load->view('Admin/Organisasi/BiografiPimpinanMJIB', $data);
    }
    public function EditBiografiPimpinanMJIB($id)   //  GURU  //
    {
        $data['biografiPimpinanMJIB'] = $this->AdminModel->EditBiografiPimpinanMJIB($id)->result_array();
        $this->load->view('Admin/Organisasi/EditBiografiPimpinanMJIB', $data);
    }
    public function UpdateBiografiPimpinanMJIB($id) //  GURU  //
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
    // =================================>>>>== ABOUT ==<<<<================================== //



    // =================================>>>>== TAUSIAH ==<<<<================================== //
    public function Tausiah()
    {
        $data['tausiahData'] = $this->AdminModel->ListTausiah('tausiah')->result_array();
        $this->load->view('Admin/Tausiah/Tausiah', $data);
    }
    public function TausiahHalamanBuatData()
    {
        $this->load->view('Admin/Tausiah/TambahData');
    }
    public function TausiahBuatData()
    {
        $this->CreateDataTausiah('./assets/admin/img/tausiah/', 'tausiah', 'Admin/Tausiah');
    }
    public function TausiahHalamanEditData($id)
    {
        $data['tausiahData'] = $this->AdminModel->DetailTausiah($id, 'tausiah')->result_array();
        $this->load->view('Admin/Tausiah/EditData', $data);
    }
    public function TausiahEditData($id)
    {
        $this->EditDataTausiah( './assets/admin/img/tausiah/', 'tausiah', $id, 'Admin/DetailTausiah/' );
    }
    public function DetailTausiah($id)
    {
        $data['tausiahData'] = $this->AdminModel->DetailTausiah($id, 'tausiah')->result_array();
        $this->load->view('Admin/Tausiah/DetailData', $data);
    }
    public function TausiahHapus($id , $image)
    {
        unlink('./assets/admin/img/tausiah/'. $image);
        $this->AdminModel->DeleteTausiah($id, 'tausiah');
        return redirect('Admin/Tausiah', 'refresh');
    }
    // =================================>>>>== TAUSIAH ==<<<<================================== //


    // =================================>>>>== JADWAL ==<<<<================================== //
    public function Jadwal()
    {
        $data['JadwalData'] = $this->AdminModel->ListJadwal('jadwal')->result_array();
        $this->load->view('Admin/Jadwal/Jadwal', $data);
    }
    public function BuatJadwal()
    {
        $this->load->view('Admin/Jadwal/BuatJadwal');
    }
    public function PostJadwal()
    {
        $data['judul'] = $this->input->post('judul');
        $data['hari'] = $this->input->post('hari');
        $data['isi'] = $this->input->post('isi');
        $data['jam'] = $this->input->post('jam');
        $data['keterangan'] = $this->input->post('keterangan');
        $data['updated_at'] = $this->input->post('updated_at');
        $this->AdminModel->CreateTausiah($data, 'jadwal');
        return redirect('Admin/Jadwal', 'refresh');
    }
    public function Detailjadwal($id, $page)
    {
        $data['JadwalData'] = $this->AdminModel->DetailJadwal($id,'jadwal')->result_array();
        $this->load->view('Admin/Jadwal/' . $page, $data);
    }
    public function UpdateJadwal($id)
    {
        $data['judul'] = $this->input->post('judul');
        $data['hari'] = $this->input->post('hari');
        $data['isi'] = $this->input->post('isi');
        $data['jam'] = $this->input->post('jam');
        $data['keterangan'] = $this->input->post('keterangan');
        $data['updated_at'] = $this->input->post('updated_at');
        $this->AdminModel->UpdateJadwal($id, $data, 'jadwal');

        $data['JadwalData'] = $this->AdminModel->DetailJadwal($id,'jadwal')->result_array();
        $this->load->view('Admin/Jadwal/DetailJadwal', $data);
    }
    public function HapusJadwal($id)
      {
          $this->AdminModel->DeleteJadwal($id, 'jadwal');
          return redirect('Admin/Jadwal', 'refresh');
      }
    // =================================>>>>== JADWAL ==<<<<================================== //


    // =================================>>>>== MEDIA ==<<<<================================== //
    public function Media()
    {
        $this->load->view('Admin/Media/Media');
    }
    // =================================>>>>== MEDIA ==<<<<================================== //


    // =================================>>>>== EVENT ==<<<<================================== //
    public function Event()
     {
         $data['EventData'] = $this->AdminModel->ListEvent('event')->result_array();
         $this->load->view('Admin/Event/Event', $data);
     }
     public function EventHalamanBuatData()
     {
         $this->load->view('Admin/Event/TambahData');
     }
     public function EventBuatData()
     {
         $this->CreateDataEvent('./assets/admin/img/event/', 'event', 'Admin/Event');
     }
     public function EventHalamanEditData($id)
     {
         $data['EventData'] = $this->AdminModel->DetailEvent($id, 'event')->result_array();
         $this->load->view('Admin/Event/EditData', $data);
     }
     public function EventEditData($id)
     {
        $this->EditDataEvent( './assets/admin/img/event/', 'event', $id, 'Admin/DetailEvent/' );
     }
     public function DetailEvent($id)
     {
         $data['EventData'] = $this->AdminModel->DetailEvent($id, 'event')->result_array();
         $this->load->view('Admin/Event/DetailData', $data);
     }
     public function EventHapus($id, $image)
     {
         unlink('./assets/admin/img/event/'. $image);
         $this->AdminModel->DeleteTausiah($id, 'event');
         return redirect('Admin/Event', 'refresh');
     }
    // =================================>>>>== EVENT ==<<<<================================== //


    // DOKUMENTASI
    public function Foto()
    {
        $this->load->view('Admin/Dokumentasi/Foto');
    }
    public function Video()
    {
        $this->load->view('Admin/Dokumentasi/Video');
    }





// ============================================ TAUSIAH ========================================//
    // $path = directory penyimpanan foto
    // $tabel = tabel database yang akan di edit
    // $redirect = redirect function halaman awal
    public function CreateDataTausiah($path, $tabel, $redirect)
    {
        $data['image'] = $this->input->post('image');
        $data['judul'] = $this->input->post('judul');
        $data['kitab'] = $this->input->post('kitab');
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
        $data['kitab'] = $this->input->post('kitab');
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


// ============================================ EVENT ========================================//
     // $path = directory penyimpanan foto
    // $tabel = tabel database yang akan di edit
    // $redirect = redirect function halaman awal
    public function CreateDataEvent($path, $tabel, $redirect)
    {
        $data['image'] = $this->input->post('image');
        $data['judul'] = $this->input->post('judul');
        $data['content'] = $this->input->post('content');
        $data['tanggal'] = $this->input->post('tanggal');
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

        $this->AdminModel->CreateEvent($data, $tabel);
        return redirect($redirect, 'refresh');
    }

    // $path = directory penyimpanan foto
    // $tabel = tabel database yang akan di edit
    // $id = passing id ke model
    // $redirect = redirect function halaman awal
     public function EditDataEvent($path, $tabel, $id, $redirect)
     {
        $imageName =  $this->input->post('imageVal');
        $data['judul'] = $this->input->post('judul');
        $data['content'] = $this->input->post('content');
        $data['tanggal'] = $this->input->post('tanggal');
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
        $this->AdminModel->UpdateEvent($id, $data, $tabel);
        return redirect($redirect . $id, 'refresh');
     }
}
