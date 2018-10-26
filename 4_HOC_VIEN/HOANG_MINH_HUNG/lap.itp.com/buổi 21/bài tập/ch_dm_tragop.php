<?php

require('MySQLHelper.php');

class ch_dm_tragop{
	/* các thuộc tính*/
public $Id;
public $Ten;
public $MoTa;
public $TrangThai;
private $DB;

	
	
	/* Các phương thức*/
	//Phương thức khởi tạo
public function __construct(){
	$this->DB= new MySQLHelper("p01.vinahost.vn","qxfbg_vnh","Hdez3!14","qxfbgkqd_haf");
}	

public function Save(){
	$thamso = array(
	$this->Id,
	$this->Ten,
	$this->MoTa,
	$this->TrangThai
	);
	return $this->DB->callProcedure('p_ch_dm_tragop_save(?,?,?,?)',$thamso);
}
public function Del(){
	$thamso = array($this->Id);
	return $this->DB->callProcedure('p_ch_dm_tragop_del(?)',$thamso);
}
public function FindAll(){
	return $this->DB->callProcedure('p_ch_dm_tragop_find_all()');
}
public function FindKey($pKey){
	$thamso = array($pKey);
	return $this->DB->callProcedure('p_ch_dm_tragop_key(?)',$thamso);
}
public function GetById(){
	$thamso = array($this->Id);
	return $this->DB->callProcedure('p_ch_dm_tragop_get_byid(?)',$thamso);
}

}
?>