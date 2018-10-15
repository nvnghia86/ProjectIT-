<?php

require('MySQLHelper.php');

class TEST_ch_sanpham{
/* Các thuộc tính*/
public $Id_SanPham;
public $Ma;
public $Ten;
public $Gia_Ban;
public $Gia_Nhap;
public $GioiThieu;
public $Id_Dm_SanPham;
public $Id_Dm_BaoHanh;
public $Id_Dm_DoiTra;
public $Id_Dm_GiaoHang;
public $Id_Dm_TraGop;
public $Id_Dm_HangSanXuat;
public $TrangThai;
private $DB;



/* Các phương thức */	
// Phương thức khởi tạo 
public function __construct(){
	$this->DB= new MySQLHelper("p01.vinahost.vn","qxfbg_vnh","Hdez3!14","qxfbgkqd_haf");
}

public function Save(){
	$thamso = array($this->Id_SanPham,
	$this->Ma,
	$this->Ten,
	$this->Gia_Ban,
	$this->Gia_Nhap,
	$this->GioiThieu,
	$this->Id_Dm_SanPham,
	$this->Id_Dm_BaoHanh,
	$this->Id_Dm_DoiTra,
	$this->Id_Dm_GiaoHang,
	$this->Id_Dm_TraGop,
	$this->Id_Dm_HangSanXuat,
	$this->TrangThai
	);
	return $this->DB->callProcedure('p_ch_sanpham_save(?,?,?,?,?,?,?,?,?,?,?,?,?)',$thamso);
}
public function Del(){
	$thamso = array($this->Id_SanPham);
	return $this->DB->callProcedure('p_ch_sanpham_del(?)',$thamso);
}
public function FindAll(){ 
	return $this->DB->callProcedure('p_ch_sanpham_find_all()');
}
public function FindKey($pKey){
	$thamso = array($pKey);
	return $this->DB->callProcedure('p_ch_sanpham_find_key(?)',$thamso);
}
public function GetById(){
	$thamso = array($this->Id_SanPham);
	return $this->DB->callProcedure('p_ch_sanpham_get_byid(?)',$thamso);
}

}

?>