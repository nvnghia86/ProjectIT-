<?php
// Nhúng lớp model của Controller tương ứng
require_once("Models/ChDmTraGop.php");

class ChDmTraGopController{

	public function __construct(){
		// Khởi tạo đối tượng model
		$this->DmTraGop = new ChDmTraGop();
	}
	
	public function viewDanhSach(){
		$this->DanhSach = $this->DmTraGop->FindAll();
		require('Views/TraGop_DanhSach.php');
	}
	
	public function viewSua(){
		$this->DmTraGop->Id = $_GET['id'];
		$rs = $this->DmTraGop->GetById();
		$this->DmTraGop->Id = $rs[0]['id_dm_baohanh'];
		$this->DmTraGop->Ten = $rs[0]['ten'];
		$this->DmTraGop->MoTa = $rs[0]['mota'];
		$this->DmTraGop->TrangThai = $rs[0]['trangthai'];
		$this->DanhSach = $this->DmTraGop->FindAll();
		require('Views/TraGop_DanhSach.php');
	}
	
	public function actLuu(){
		$this->DmTraGop->Id = $_POST['Id'];
		$this->DmTraGop->Ten = $_POST['Ten'];
		$this->DmTraGop->MoTa = $_POST['MoTa'];
		$this->DmTraGop->TrangThai = $_POST['TrangThai'];
		$this->DmTraGop->Save();
		$this->DmTraGop = $this->DmTraGop->FindAll();
		require('Views/TraGop_DanhSach.php');
	}
	
	public function actXoa(){
		$this->DmTraGop->Id = $_GET['id'];
		$this->DmTraGop->Del();
		header('location: ?controller=chdmtragop&view=danhsach');
	}
	
	public function actTim(){
		$Key = $_POST['SearchKey'];
		$this->DanhSach = $this->DmTraGop->FindKey($Key);
		require('Views/TraGop_DanhSach.php');
	}
}

$Controller = new ChDmTraGopController();

?>