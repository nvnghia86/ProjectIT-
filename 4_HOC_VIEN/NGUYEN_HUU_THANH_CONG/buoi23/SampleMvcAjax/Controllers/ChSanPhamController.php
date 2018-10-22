<?php
// Nhúng lớp model của Controller tương ứng
require_once("Models/ChSanPham.php");

class ChSanPhamController{

	public function __construct(){
		// Khởi tạo đối tượng model
		$this->ChSanPham = new ChSanPham();
	}
	
	public function viewDanhSach(){
		$this->DanhSach = $this->ChSanPham->FindAll();
		require('Views/ChSanPham_DanhSach.php');
	}
	
	public function viewSua(){
		$this->ChSanPham->Id_SanPham = $_GET['id'];
		$rs = $this->ChSanPham->GetById();
		$this->ChSanPham->Id_SanPham = $rs[0]['Id_SanPham'];
		$this->ChSanPham->Ma = $rs[0]['Ma'];
		$this->ChSanPham->Ten = $rs[0]['Ten'];
		$this->ChSanPham->Gia_Nhap = $rs[0]['GiaNhap'];
		$this->ChSanPham->Gia_Ban = $rs[0]['giaban'];
		$this->ChSanPham->GioiThieu = $rs[0]['gioithieu'];
		$this->ChSanPham->Id_Dm_SanPham = $rs[0]['Id_Dm_SanPham'];
		$this->ChSanPham->Id_Dm_BaoHanh = $rs[0]['Id_Dm_BaoHanh'];
		$this->ChSanPham->Id_Dm_DoiTra = $rs[0]['Id_Dm_DoiTra'];
		$this->ChSanPham->Id_Dm_GiaoHang = $rs[0]['Id_Dm_GiaoHang'];
		$this->ChSanPham->Id_Dm_TraGop = $rs[0]['Id_Dm_TraGop'];
		$this->ChSanPham->Id_Dm_Hang_SanSuat = $rs[0]['Id_Dm_Hang_SanSuat'];
		$this->ChSanPham->TrangThai = $rs[0]['trangthai'];
		$this->DanhSach = $this->ChSanPham->FindAll();
		require('Views/ChSanPham_DanhSach.php');
	}
	
	public function actLuu(){
		$this->DmBaoHanh->Id_SanPham = $_POST['Id'];
		$this->DmBaoHanh->Ma = $_POST['Ten'];
		$this->DmBaoHanh->Ten = $_POST['MoTa'];
		$this->DmBaoHanh->Gia_Nhap = $_POST['Gia_Nhap'];
		$this->DmBaoHanh->Gia_Ban = $_POST['Gia_Ban'];
		$this->DmBaoHanh->GioiThieu = $_POST['GioiThieu'];
		$this->ChSanPham->Id_Dm_SanPham = $_POST['Id_Dm_SanPham'];
		$this->ChSanPham->Id_Dm_BaoHanh = $_POST['Id_Dm_BaoHanh'];
		$this->ChSanPham->Id_Dm_DoiTra = $_POST['Id_Dm_DoiTra'];
		$this->ChSanPham->Id_Dm_GiaoHang = $_POST['Id_Dm_GiaoHang'];
		$this->ChSanPham->Id_Dm_TraGop = $_POST['Id_Dm_TraGop'];
		$this->ChSanPham->Id_Dm_Hang_SanSuat = $_POST['Id_Dm_Hang_SanSuat'];
		$this->ChSanPham->TrangThai = $_POST['TrangThai'];
		$this->ChSanPham->Save();
		$this->DanhSach = $this->ChSanPham->FindAll();
		require('Views/ChSanPham_DanhSach.php');
	}
	
	public function actXoa(){
		$this->ChSanPham->Id = $_GET['id'];
		$this->ChSanPham->Del();
		header('location: ?controller=ChSanPham&view=danhsach');
	}
	
	public function actTim(){
		$Key = $_POST['SearchKey'];
		$this->DanhSach = $this->ChSanPham->FindKey($Key);
		require('Views/ChSanPham_DanhSach.php');
	}
}

$Controller = new ChSanPhamController();

?>