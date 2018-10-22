<?php
// Nhúng thư viện hỗ trợ xử lý DB MySQL
require('Cores/MySQLHelper.php');

class ChDmTraGop{
	/* Các thuộc tính */
	public $Id;
	public $Ten;
	public $MoTa;
	public $TrangThai;
	
	/* Các Phương thức */
	public function __construct(){
		// Khởi tạo đối tượng hỗ trợ kết nối tới DB
		$this->DB= new MySQLHelper(DB_HOST,DB_USER,DB_PASS,DB_NAME);
	}
	
	public function FindAll(){
		return $this->DB->callProcedure('p_ch_dm_tragop_find_all()');
	}
	
	public function FindKey($Key){
		$params = array($Key);
		return $this->DB->callProcedure('p_ch_dm_tragop_find_key(?)',$params);
	}
	
	public function GetById(){
		$params = array($this->Id);
		return $this->DB->callProcedure('p_ch_dm_tragop_get_byid(?)',$params);
	}
	
	public function Save(){
		$params = array($this->Id, $this->Ten,$this->MoTa, $this->TrangThai);
		return $this->DB->callProcedure('p_ch_dm_tragop_save(?,?,?,?)',$params);
	}
	
	public function Del(){
		$params = array($this->Id);
		return $this->DB->callProcedure('p_ch_dm_tragop_del(?)',$params);
	}

}


?>