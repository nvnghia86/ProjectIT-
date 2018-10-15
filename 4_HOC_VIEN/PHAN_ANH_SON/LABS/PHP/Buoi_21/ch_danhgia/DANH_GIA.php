<?php
require('MySQLHelper.php');

class DANH_GIA{
	public $Id_DanhGia;
	public $Diem;
	public $Id_SanPham;
	public $Id_KhanhHang;
	
	public function __construct(){
		$this->DB = new MySQLHelper("p01.vinahost.vn", "qxfbg_vnh", "Hdez3!14", "qxfbgkqd_haf");
	}
	
	public function Save(){
		$thamso = array($this->Id_DanhGia,
						$this->Diem,
						$this->Id_SanPham, 
						$this->Id_KhanhHang);
		return $this->DB->callProcedure('p_ch_danhgia_save(?,?,?,?)',$thamso);
	}
	
	public function Del(){
		$thamso = array($this->Id_DanhGia);
		return $this->DB->callProcedure('p_ch_danhgia_del(?)',$thamso);
	}
	
	public function FindAll(){
		return $this->DB->callProcedure('p_ch_danhgia_find_all()');
	}
	
	public function FindKey($pKey){
		$thamso = array($pKey);
		return $this->DB->callProcedure('p_ch_danhgia_find_key(?)',$thamso);
	}
	
	public function GetById(){
		$thamso = array($this->Id_DanhGia);;
		return $this->DB->callProcedure('p_ch_danhgia_get_byid(?)',$thamso);
	}
}
?>