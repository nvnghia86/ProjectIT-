<?php
// Nhúng thư viện hỗ trợ xử lý DB MySQL
require('Cores/MySQLHelper.php');

class ChSanPham{
	/* Các thuộc tính */
	public $Id_SanPham;
	public $Ma;
	public $Ten;
	public $Gia_Nhap;
	public $Gia_Ban;
	public $GioiThieu;
	public $Id_Dm_SanPham;
	public $Id_Dm_BaoHanh;
	public $Id_Dm_DoiTra;
	public $Id_Dm_GiaoHang;
	public $Id_Dm_TraGop;
	public $Id_Dm_Hang_SanSuat;
	public $TrangThai;
	
	/* Các Phương thức */
	public function __construct(){
		// Khởi tạo đối tượng hỗ trợ kết nối tới DB
		$this->DB= new MySQLHelper(DB_HOST,DB_USER,DB_PASS,DB_NAME);
	}
	
	public function FindAll(){
		return $this->DB->callProcedure('p_ch_sanpham_find_all()');
	}
	
	public function FindKey($Key){
		$params = array($Key);
		return $this->DB->callProcedure('p_ch_sanpham_find_key(?)',$params);
	}
	
	public function GetById(){
		$params = array($this->Id_SanPham);
		return $this->DB->callProcedure('p_ch_sanpham_get_byid(?)',$params);
	}
	
	public function Save(){
		$params = array($this->Id_SanPham, $this->Ma,$this->Ten, $this->Gia_Nhap, $this->Gia_Ban, $this->GioiThieu, $this->Id_Dm_SanPham, $this->Id_Dm_BaoHanh, $this->Id_Dm_DoiTra, $this->Id_Dm_GiaoHang, $this->Id_Dm_TraGop, $this->Id_Dm_Hang_SanXuat, $this->Id_Dm_TrangThai);
		return $this->DB->callProcedure('p_ch_sanpham_save(?,?,?,?)',$params);
	}
	
	public function Del(){
		$params = array($this->Id_SanPham);
		return $this->DB->callProcedure('p_ch_sanpham_del(?)',$params);
	}

}


?>