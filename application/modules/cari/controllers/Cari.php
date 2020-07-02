<?php
class Cari extends CI_Controller {
 
	public function __construct()
	{
		parent::__construct();
		$this->load->helper("url");
		$this->load->model('mCari');
	}
 
	public function cari() 
	{
		$this->load->view('cari_v');
	}
 
	public function hasil()
	{
		$data2['cari'] = $this->mCari->cariProduk();
		$this->load->view('result', $data2);
	}
}