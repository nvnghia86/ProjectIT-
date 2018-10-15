<?php
require('MySQLHelper.php');
class BAO_HANH{
	public $Id_Dm_BaoHanh;
	public $Ten;
	public $MoTa;
	public $TrangThai;
	private $DB;
	
	public function __construct(){
		$this->DB = new MySQLHelper("p01.vinahost.vn","qxfbg_vnh","Hdez3!14","qxfbgkqd_haf");
	}
	
	public function Save(){
		$thamso = array($this->Id_Dm_BaoHanh,
						$this->Ten,
						$this->MoTa,
						$this->TrangThai);
		return $this->DB->callProcedure('p_ch_dm_baohanh_save(?,?,?,?)',$thamso);
	}
	
	public function Del(){
		$thamso = array($this->Id_Dm_BaoHanh);
		return $this->DB->callProcedure('p_ch_dm_baohanh_del(?)',$thamso);
	}
	
	public function FindAll(){
		return $this->DB->callProcedure('p_ch_dm_baohanh_find_all()');
	}
	
	public function FindKey($pKey){
		$thamso = array($pKey);
		return $this->DB->callProcedure('p_ch_dm_baohanh_find_key(?)',$thamso);
	}
	
	public function GetById(){
		$thamso = array($this->Id_Dm_BaoHanh);
		return $this->DB->callProcedure('p_ch_dm_baohanh_get_byid(?)',$thamso);
	}
}
?>