<?php
require_once('Models/TEST_HOCVIEN.php');
	
class HocVienController{
	public $Id=0;
	public $DanhSach;
	public $HocVien;
	
	public function __construct(){
		$this->HocVien = new TEST_HOCVIEN();
	}
	
	public function viewDefault(){
		require('Views/default.php');
	}
	
	public function viewDanhSach(){
		$this->DanhSach = $this->HocVien->FindAll();
		require('Views/danhsach.php');
	}
	
	public function actLuu(){
		$this->HocVien->Id = $_POST['Id'];
		$this->HocVien->HoTen = $_POST['HoTen'];
		$this->HocVien->Save();
		header('location: ?controller=hocvien&view=danhsach');
	}
	
	public function actXoa(){
		$this->HocVien = new TEST_HOCVIEN();
		$this->HocVien->Id = $_GET['id'];
		$this->HocVien->Del();
		header('location: ?controller=hocvien&view=danhsach');
	}
	
	public function viewSua(){
		$this->HocVien->Id = $_GET['id'];
		$rs = $this->HocVien->GetById();
		$this->HocVien->HoTen = $rs[0]['hoten'];
		require('Views/sua.php');
	}
	
	public function actSua(){
		$this->HocVien->Id = $_POST['Id'];
		$this->HocVien->HoTen = $_POST['HoTen'];
		$this->HocVien->Save();
		header('location: ?controller=hocvien&view=danhsach');
	}
}

$Controller  = new HocVienController();



?>