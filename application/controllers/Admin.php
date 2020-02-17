<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Admin extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
        $this->load->model('LoginModel');
        $this->load->model('AdminModel');
        $this->load->library('session');
        if(!$this->is_logged_in()){
          redirect('User/login');
        }
    }
    
    // Session Login Admin
    public function is_logged_in() {
        $user = $this->session->userdata('user');
        if (!isset($user)) { 
            return false; 
        } 
        else { 
            return true;
        }
    } 
    // Session Login Admin

    // =================================>>>>== DASHBOARD ==<<<<================================== //
    public function index()
    {
        $data['eventData'] = $this->AdminModel->EventTerdekatDashboard()->result_array();
        $data['eventTodayData'] = $this->AdminModel->EventTodayDashboard()->result_array();
        $data['tausiahBidayatulHidayah'] = $this->AdminModel->TausiahDashboard('Bidayatul Hidayah')->num_rows();
        $data['tausiahAqidatulAwam'] = $this->AdminModel->TausiahDashboard('Aqidatul Awam')->num_rows();
        $data['tausiahNashohihDiniyah'] = $this->AdminModel->TausiahDashboard('Nashohih Diniyah')->num_rows();
        $data['tausiahIhyaUlumuddin'] = $this->AdminModel->TausiahDashboard('Ihya Ulumuddin')->num_rows();
        $data['tausiahRiyadhusShalihin'] = $this->AdminModel->TausiahDashboard('Riyadhus Shalihin')->num_rows();
        $data['tausiahSyarahRatibulHaddad'] = $this->AdminModel->TausiahDashboard('Syarah Ratibul Haddad')->num_rows();
        $data['tausiahSyarahHaditsJibril'] = $this->AdminModel->TausiahDashboard('Syarah Hadits Jibril')->num_rows();
        $this->load->view('Admin/index', $data);
    }
    // =================================>>>>== DASHBOARD ==<<<<================================== //

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

    // =================================>>>>== ABOUT ==<<<<================================== //
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
        $this->CreateDataJadwal('./assets/admin/img/jadwal/', 'jadwal', 'Admin/Jadwal');
    }
    public function JadwalHalamanEditData($id)
    {
        $data['JadwalData'] = $this->AdminModel->DetailJadwal($id, 'jadwal')->result_array();
        $this->load->view('Admin/Jadwal/EditJadwal', $data);
    }
    public function Detailjadwal($id)
    {
        $data['JadwalData'] = $this->AdminModel->DetailJadwal($id,'jadwal')->result_array();
        $this->load->view('Admin/Jadwal/DetailJadwal', $data);
    }
    public function UpdateJadwal($id)
    {
        $this->EditDataJadwal( './assets/admin/img/jadwal/', 'jadwal', $id, 'Admin/Detailjadwal/' );
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


    // =================================>>>>== DOKUMENTASI ==<<<<================================== //
    public function Foto()
    {
        $dataTag['tagFoto'] = $this->AdminModel->DataTagFoto()->result_array();
        $this->load->view('Admin/Dokumentasi/Foto', $dataTag);
    }
    public function TagFoto()
    {
        $data = $this->AdminModel->DataTagFoto()->result();
        echo json_encode($data);
    }
    public function DeleteTagFoto($id)
    {
        return $this->AdminModel->DeleteTagFoto($id);
        // return redirect('Admin/Foto', 'refresh');
    }
    public function UploadImage()
    {
        $countfiles = count($_FILES['foto']['name']);
        for($i=0;$i<$countfiles;$i++){
            $filename = date("dmyhis") . $i . $_FILES['foto']['name'][$i];
            move_uploaded_file($_FILES['foto']['tmp_name'][$i],'./assets/admin/img/dokumentasi/foto/'.$filename);
            $data['foto'] = $filename;
            $data['tag'] = $this->input->post('tag');
            $data['dateUpload'] = date("d/m/y");
            $this->AdminModel->InsertFoto($data, 'foto');
        }
    }
    public function Video()
    {
        $this->load->view('Admin/Dokumentasi/Video');
    }
    // =================================>>>>== DOKUMENTASI ==<<<<================================== //


// ====================================================== JADWAL ====================================================== // 
    // $path = directory penyimpanan foto
    // $tabel = tabel database yang akan di edit
    // $redirect = redirect function halaman awal
    public function CreateDataJadwal($path, $tabel, $redirect)
    {
        $data['image'] = $this->input->post('image');
        $data['judul'] = $this->input->post('judul');
        $data['image'] = $this->input->post('image');
        $data['hari'] = $this->input->post('hari');
        $data['isi'] = $this->input->post('isi');
        $data['jam'] = $this->input->post('jam');
        $data['keterangan'] = $this->input->post('keterangan');
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

        $this->AdminModel->CreateJadwal($data, $tabel);
        return redirect($redirect, 'refresh');
    }

    // $path = directory penyimpanan foto
    // $tabel = tabel database yang akan di edit
    // $id = passing id ke model
    // $redirect = redirect function halaman awal
     public function EditDataJadwal($path, $tabel, $id, $redirect)
     {
        $imageName =  $this->input->post('imageVal');
        $data['judul'] = $this->input->post('judul');
        $data['image'] = $this->input->post('image');
        $data['hari'] = $this->input->post('hari');
        $data['isi'] = $this->input->post('isi');
        $data['jam'] = $this->input->post('jam');
        $data['keterangan'] = $this->input->post('keterangan');
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
       $this->AdminModel->UpdateJadwal($id, $data, $tabel);
        return redirect($redirect . $id, 'refresh');
     }
// ====================================================== JADWAL ====================================================== // 

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
