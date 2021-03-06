<?php

require_once('Cores/MySQLHelper.php');

class TEST_HOCVIEN{
/* Các thuộc tính*/
public $Id;
public $HoTen;
private $DB;



/* Các phương thức */	
// Phương thức khởi tạo 
public function __construct(){
	$this->DB= new MySQLHelper(DB_HOST,DB_USER,DB_PASS,DB_NAME);
}

public function Save(){
	$thamso = array($this->Id,$this->HoTen);
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