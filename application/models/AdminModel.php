<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AdminModel extends CI_Model {

    public function BiografiMJIB()
    {
        return $query = $this->db->get('biografimjib');
    }

    public function EditBiografiMJIB($id)
    {
        $this->db->where('id', $id);
        return $this->db->get('biografimjib');
    }

    public function UpdateBiografiMJIB($id, $data)
    {
        $this->db->where('id', $id);
        $this->db->update('biografimjib', $data);
    }

    public function BiografiPimpinanMJIB()
    {
        return $query = $this->db->get('biografipimpinanmjib');
    }

    public function EditBiografiPimpinanMJIB($id)
    {
        $this->db->where('id', $id);
        return $this->db->get('biografipimpinanmjib');
    }

    public function UpdateBiografiPimpinanMJIB($id, $data)
    {
        $this->db->where('id', $id);
        $this->db->update('biografipimpinanmjib', $data);
    }

}
