<?php

class Dashboard extends CI_Model{


    public function getBarang($id)
    {   
        $this->db->where('prod_id', $id);
        return $this->db->get('products')->result_array();
    }
    
}