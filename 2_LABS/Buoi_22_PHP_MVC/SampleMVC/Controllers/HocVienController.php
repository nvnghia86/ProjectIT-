<?php
require_once('Models/TEST_HOCVIEN.php');
	
class HocVienController{
	
	public $DanhSach;
	
	public function showDanhSach(){
		$HocVien = new TEST_HOCVIEN();
		$this->DanhSach = $HocVien->FindAll();
		require('Views/danhsach.php');
	}
	
}



?>