<?php
class mCari extends CI_Model {
	public function __construct()
	{
		$this->load->database();
	}
	public function cari()
	{
		$cari = $this->input->GET('cari', TRUE);
		$data = $this->db->query("SELECT * from products where prod_name like '%$cari%' ");
		return $data->result();
	}
 
 
}