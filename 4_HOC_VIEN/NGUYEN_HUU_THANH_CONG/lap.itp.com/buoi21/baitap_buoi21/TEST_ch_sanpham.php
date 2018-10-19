<?php

require('MySQLHelper.php');

class TEST_ch_sanpham{
/* Các thuộc tính*/
public $Id_SanPham;
public $Ma;
private $DB;



/* Các phương thức */	
// Phương thức khởi tạo 
public function __construct(){
	$this->DB= new MySQLHelper("p01.vinahost.vn","qxfbg_vnh","Hdez3!14","qxfbgkqd_haf");
}

public function Save(){
	$thamso = array($this->Id,$this->Ma);
	return $this->DB->callProcedure('p_ch_sanpham_save(?,?)',$thamso);
}
public function Del(){
	$thamso = array($this->Id);
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
	$thamso = array($this->Id);
	return $this->DB->callProcedure('p_ch_sanpham_get_byid(?)',$thamso);
}

}

?>