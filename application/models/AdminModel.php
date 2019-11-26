<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AdminModel extends CI_Model {

    // =================================>>>>== DASHBOARD ==<<<<================================== //
    public function EventTerdekatDashboard()
    {   
        $date = date("Y-m-d");
        return $this->db->order_by('tanggal', 'ASC')->where('tanggal >', $date)->get('event', 5);
    }
    public function EventTodayDashboard()
    {   
        $date = date("Y-m-d");
        return $this->db->where('tanggal', $date)->get('event');
    }
    public function TausiahDashboard($kitab)
    {   
        return $this->db->where('kitab',$kitab)->get('tausiah');
    }
    // =================================>>>>== DASHBOARD ==<<<<================================== //

    // =================================>>>>== ORGANISASI ==<<<<================================== //
    public function BiografiMJIB()
    {
        return $query = $this->db->get('biografi_mjib');
    }

    public function EditBiografiMJIB($id)
    {
        $this->db->where('id', $id);
        return $this->db->get('biografi_mjib');
    }

    public function UpdateBiografiMJIB($id, $data)
    {
        $this->db->where('id', $id);
        $this->db->update('biografi_mjib', $data);
    }

    public function BiografiPimpinanMJIB()
    {
        return $query = $this->db->get('biografi_pimpinan_mjib');
    }

    public function EditBiografiPimpinanMJIB($id)
    {
        $this->db->where('id', $id);
        return $this->db->get('biografi_pimpinan_mjib');
    }

    public function UpdateBiografiPimpinanMJIB($id, $data)
    {
        $this->db->where('id', $id);
        $this->db->update('biografi_pimpinan_mjib', $data);
    }
    // =================================>>>>== ORGANISASI ==<<<<================================== //

    // =================================>>>>== TAUSIAH ==<<<<================================== //
    public function ListTausiah($tabel)
    {
        return $this->db->get($tabel);
    }
    public function CreateTausiah($data, $tabel)
    {
        return $this->db->insert($tabel, $data);
    }
    public function DetailTausiah($id, $tabel)
    {
        $this->db->where('id', $id);
        return $this->db->get($tabel);
    }
    public function UpdateTausiah($id, $data, $tabel)
    {
        $this->db->where('id', $id);
        return $this->db->update($tabel, $data);
    }
    public function DeleteTausiah($id, $tabel)
    {
        $this->db->where('id', $id);
        return $this->db->delete($tabel);
    }
    // =================================>>>>== TAUSIAH ==<<<<================================== //

     // =================================>>>>== JADWAL ==<<<<================================== //
    public function ListJadwal($tabel)
    {
        return $this->db->get($tabel);
    }
    public function CreateJadwal($data, $tabel)
    {
        return $this->db->insert($tabel, $data);
    }
    public function DetailJadwal($id, $tabel)
    {
        $this->db->where('id', $id);
        return $this->db->get($tabel);
    }
    public function UpdateJadwal($id, $data, $tabel)
    {
        $this->db->where('id', $id);
        return $this->db->update($tabel, $data);
    }
    public function DeleteJadwal($id, $tabel)
    {
        $this->db->where('id', $id);
        return $this->db->delete($tabel);
    }
    // =================================>>>>== JADWAL ==<<<<================================== //

     // =================================>>>>== EVENT ==<<<<================================== //
    public function ListEvent($tabel)
    {
        return $this->db->get($tabel);
    }
    public function CreateEvent($data, $tabel)
    {
        return $this->db->insert($tabel, $data);
    }
    public function DetailEvent($id, $tabel)
    {
        $this->db->where('id', $id);
        return $this->db->get($tabel);
    }
    public function UpdateEvent($id, $data, $tabel)
    {
        $this->db->where('id', $id);
        return $this->db->update($tabel, $data);
    }
    public function DeleteEvent($id, $tabel)
    {
        $this->db->where('id', $id);
        return $this->db->delete($tabel);
    }
    // =================================>>>>== EVENT ==<<<<================================== //

}
