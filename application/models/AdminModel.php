<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AdminModel extends CI_Model {

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
    public function BidayatulHidayahList()
    {
        return $this->db->get('bidayatul_hidayah');
    }
    public function BidayatulHidayahCreate($data)
    {
        return $this->db->insert('bidayatul_hidayah', $data);
    }
    public function BidayatulHidayahDetail($id)
    {
        $this->db->where('id', $id);
        return $this->db->get('bidayatul_hidayah');
    }
    public function BidayatulHidayahUpdate($id, $data)
    {
        $this->db->where('id', $id);
        return $this->db->update('bidayatul_hidayah', $data);
    }
    public function BidayatulHidayahDelete($id)
    {
        $this->db->where('id', $id);
        return $this->db->delete('bidayatul_hidayah');
    }


    public function IhyaUlumuddinList()
    {
        return $this->db->get('bidayatul_hidayah');
    }
    // =================================>>>>== TAUSIAH ==<<<<================================== //

}
