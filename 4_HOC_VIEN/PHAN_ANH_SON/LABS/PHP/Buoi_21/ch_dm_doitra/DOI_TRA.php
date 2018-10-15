<?php
require('MySQLHelper.php');
class DOI_TRA{
	public $Id_Dm_DoiTra;
	public $Ten;
	public $MoTa;
	public $TrangThai;
	private $DB;
	
	public function __construct(){
		$this->DB= new MySQLHelper("p01.vinahost.vn","qxfbg_vnh","Hdez3!14","qxfbgkqd_haf");
	}
	
	public function Save(){
		$thamso = array($this->Id_Dm_DoiTra,
						$this->Ten,
						$this->MoTa,
						$this->TrangThai
						);
		return $this->DB->callProcedure('p_ch_dm_doitra_save(?,?,?,?)',$thamso);
	}
	
	public function Del(){
		$thamso = array($this->Id_Dm_DoiTra);
		return $this->DB->callProcedure('p_ch_dm_doitra_del(?)',$thamso);
	}
	
	public function FindAll(){
		return $this->DB->callProcedure('p_ch_dm_doitra_find_all()');
	}
	
	public function FindKey($pKey){
		$thamso = array($pKey);
		return $this->DB->callProcedure('p_ch_dm_doitra_find_key(?)',$thamso);
	}
	
	public function GetById(){
		$thamso = array($this->Id_Dm_DoiTra);
		return $this->DB->callProcedure('p_ch_dm_doitra_get_byid(?)',$thamso);
	}
}
?>