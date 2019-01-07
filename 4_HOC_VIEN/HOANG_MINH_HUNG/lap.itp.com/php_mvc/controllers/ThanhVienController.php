<?php
require_once("Models/THANH_VIEN.php");

class ThanhVienController{
	
	public $Id_ThanhVien=0;
	public $DanhSach;
	public $ThanhVien;
	
	public function __construct(){
		$this->ThanhVien = new THANH_VIEN();
	}
	
	public function viewDefault(){
		require('Views/Default.php');
	}
	
	public function viewDanhSach(){
		$this->DanhSach = $this->ThanhVien->FindAll();
		require('Views/DanhSach.php');
	}
	
	public function actLuu(){
		$this->ThanhVien->Id_ThanhVien 	= $_POST['Id_ThanhVien'];
		$this->ThanhVien->HoTen 		= $_POST['HoTen'];
		$this->ThanhVien->QueQuan 		= $_POST['QueQuan'];
		$this->ThanhVien->NamSinh 	    = $_POST['NamSinh'];
		print_r($this->ThanhVien);
		$this->ThanhVien->Save();
		header('location: ?controller=thanhvien&view=danhsach');
	}
	
	public function actXoa(){
		$this->ThanhVien = new THANH_VIEN();
		$this->ThanhVien->Id_ThanhVien = $_GET['id'];
		$this->ThanhVien->Del();
		header('location: ?controller=thanhvien&view=danhsach');
	}
	
	public function viewSua(){
		$this->ThanhVien->Id_ThanhVien = $_GET['id'];
		$rs = $this->ThanhVien->GetById();
		$this->ThanhVien->HoTen 		= $rs[0]['hoten'];
		$this->ThanhVien->QueQuan 		= $rs[0]['quequan'];
		$this->ThanhVien->NamSinh 	    = $rs[0]['namsinh'];
		
		$this->DanhSach = $this->ThanhVien->FindAll();
		require('Views/danhsach.php');
	}
	
	public function actSua(){
		$this->ThanhVien->Id_ThanhVien 	= $_POST['Id_ThanhVien'];
		$this->ThanhVien->HoTen 		= $_POST['HoTen'];
		$this->ThanhVien->QueQuan 		= $_POST['QueQuan'];
		$this->ThanhVien->NamSinh 	    = $_POST['NamSinh'];
		$this->ThanhVien->Save();
		header('location: ?controller=thanhvien&view=danhsach');
	}
	
	public function actTim(){
		$Key = $_POST['SearchKey'];
		$this->DanhSach = $this->ThanhVien->FindKey($Key);
		require('Views/danhsach.php');
	}
	
}

$Controller  = new ThanhVienController();
	
?>