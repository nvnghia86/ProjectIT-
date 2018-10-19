<?php
require_once("Models/KHACH_HANG.php");

class KhachHangController{
	
	public $Id_KhachHang=0;
	public $DanhSach;
	public $KhachHang;
	
	public function __construct(){
		$this->KhachHang = new KHACH_HANG();
	}
	
	public function viewDefault(){
		require('Views/Default.php');
	}
	
	public function viewDanhSach(){
		$this->DanhSach = $this->KhachHang->FindAll();
		require('Views/DanhSach.php');
	}
	
	public function actLuu(){
		$this->KhachHang->Id_KhachHang 	= $_POST['Id_KhachHang'];
		$this->KhachHang->HoTen 		= $_POST['HoTen'];
		$this->KhachHang->Email 		= $_POST['Email'];
		$this->KhachHang->SoDienThoai 	= $_POST['SoDienThoai'];
		$this->KhachHang->MatKhau 		= $_POST['MatKhau'];
		$this->KhachHang->TrangThai 	= $_POST['TrangThai'];
		print_r($this->KhachHang);
		//$this->KhachHang->Save();
		//header('location: ?controller=khachhang&view=danhsach');
	}
	
	public function actXoa(){
		$this->KhachHang = new KHACH_HANG();
		$this->KhachHang->Id_KhachHang = $_GET['id'];
		$this->KhachHang->Del();
		header('location: ?controller=khachhang&view=danhsach');
	}
	
	public function viewSua(){
		$this->KhachHang->Id_KhachHang = $_GET['id'];
		$rs = $this->KhachHang->GetById();
		$this->KhachHang->HoTen 		= $rs[0]['hoten'];
		$this->KhachHang->Email 		= $rs[0]['email'];
		$this->KhachHang->SoDienThoai 	= $rs[0]['sodienthoai'];
		$this->KhachHang->MatKhau 		= $rs[0]['matkhau'];
		$this->KhachHang->TrangThai 	= $rs[0]['trangthai'];
		require('Views/sua.php');
	}
	
	public function actSua(){
		$this->KhachHang->Id_KhachHang 	= $_POST['Id_KhachHang'];
		$this->KhachHang->HoTen 		= $_POST['HoTen'];
		$this->KhachHang->Email 		= $_POST['Email'];
		$this->KhachHang->SoDienThoai 	= $_POST['SoDienThoai'];
		$this->KhachHang->MatKhau 		= $_POST['MatKhau'];
		$this->KhachHang->TrangThai 	= $_POST['TrangThai'];
		$this->KhachHang->Save();
		header('location: ?controller=khachhang&view=danhsach');
	}
	

}

$Controller  = new KhachHangController();
	
?>