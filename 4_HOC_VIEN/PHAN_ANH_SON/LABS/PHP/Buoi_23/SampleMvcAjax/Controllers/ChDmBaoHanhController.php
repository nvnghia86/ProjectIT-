<?php
// Nhúng lớp model của Controller tương ứng
require_once("Models/ChDmBaoHanh.php");

class ChDmBaoHanhController{

	public function __construct(){
		// Khởi tạo đối tượng model
		$this->DmBaoHanh = new ChDmBaoHanh();
	}
	
	public function viewDanhSach(){
		$this->DanhSach = $this->DmBaoHanh->FindAll();
		require('Views/BaoHanh_DanhSach.php');
	}
	
	public function viewSua(){
		$this->DmBaoHanh->Id = $_GET['id'];
		$rs = $this->DmBaoHanh->GetById();
		$this->DmBaoHanh->Id = $rs[0]['id_dm_baohanh'];
		$this->DmBaoHanh->Ten = $rs[0]['ten'];
		$this->DmBaoHanh->MoTa = $rs[0]['mota'];
		$this->DmBaoHanh->TrangThai = $rs[0]['trangthai'];
		$this->DanhSach = $this->DmBaoHanh->FindAll();
		require('Views/BaoHanh_DanhSach.php');
	}
	
	public function actLuu(){
		$this->DmBaoHanh->Id = $_POST['Id'];
		$this->DmBaoHanh->Ten = $_POST['Ten'];
		$this->DmBaoHanh->MoTa = $_POST['MoTa'];
		$this->DmBaoHanh->TrangThai = $_POST['TrangThai'];
		$this->DmBaoHanh->Save();
		$this->DanhSach = $this->DmBaoHanh->FindAll();
		require('Views/BaoHanh_DanhSach.php');
	}
	
	public function actXoa(){
		$this->DmBaoHanh->Id = $_GET['id'];
		$this->DmBaoHanh->Del();
		header('location: ?controller=chdmbaohanh&view=danhsach');
	}
	
	public function actTim(){
		$Key = $_POST['SearchKey'];
		$this->DanhSach = $this->DmBaoHanh->FindKey($Key);
		require('Views/BaoHanh_DanhSach.php');
	}
}

$Controller = new ChDmBaoHanhController();

?>