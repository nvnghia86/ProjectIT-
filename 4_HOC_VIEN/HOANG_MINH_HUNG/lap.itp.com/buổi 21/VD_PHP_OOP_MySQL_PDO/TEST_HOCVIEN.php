<?php

require('MySQLHelper.php');

class TEST_HOCVIEN{
	/* các thuộc tính*/
public $Id;
public $HoTen;
private $DB;
	
	
	/* Các phương thức*/
	//Phương thức khởi tạo
public function __construct(){
	$this->DB= new MySQLHelper("p01.vinahost.vn","qxfbg_vnh","Hdez3!14","qxfbgkqd_haf");
}	

public function Save(){
	$thamso = array($this->Id,$this->Hoten);
	return $this->DB->callProcedure('p_test_hocvien_save(?,?)',$thamso);
}
public function Del(){
	$thamso = array($this->Id);
	return $this->DB->callProcedure('p_test_hocvien_del(?)',$thamso);
}
public function FindAll(){
	return $this->DB->callProcedure('p_test_hocvien_find_all()');
}
public function FindKey($pKey){
	$thamso = array($pKey);
	return $this->DB->callProcedure('p_test_hocvien_find_key(?)',$thamso);
}
public function GetById(){
	$thamso = array($this->Id);
	return $this->DB->callProcedure('p_test_hocvien_get_byid(?)',$thamso);
}

}
?>