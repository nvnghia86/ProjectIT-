<?php 
require('MySQLHelper.php');

class TEST_HOCVIEN 
{
	
	public function __construct()
	{
		$this-> DB = new MySQLHelper("p01.vinahost.vn","qxfbg_vnh","Hdez3!14","qxfbgkqd_haf");
	}
	public function Save()
	{
		$thamso = array($this->Id,$this->HoTen);
		return $this->DB->call_procedure('p_test_hocvien_save(?,?)',$thamso);
	}

}
 ?>