 <?php
 require('MySQLHelper.php');
 
 class KHACHHANG{
	/*  Các thuộc tính */
	public $Id_KhachHang;
	public $HoTen;
	public $Email;
	public $SoDienThoai;
	public $MatKhau;
	public $TrangThai;
	public function __construct(){
	$this->DB= new MySQLHelper("p01.vinahost.vn","qxfbg_vnh","Hdez3!14","qxfbgkqd_haf");
	}
	
	public function Save(){
		$thamso = array($this->Id_KhachHang,$this->HoTen,$this->Email,$this->SoDienThoai,$this->MatKhau,$this->TrangThai);
		return $this->DB->callProcedure('p_ch_khachhang_save(?,?,?,?,?,?)',$thamso);
	}
	
	public function Del(){
		$thamso = array($this->Id_KhachHang);
		return $this->DB->callProcedure('p_ch_khachhang_del(?)',$thamso);
	}
	
	public function FindAll(){
		return $this->DB->callProcedure('p_ch_khachhang_find_all()');
	}
	
	public function FindKey($pKey){
		$thamso = array($pKey);
		return $this->DB->callProcedure('p_ch_khachhang_find_key(?)',$thamso);
	}
	
	 public function GetById(){
		 $thamso = array($this->Id_KhachHang);
		 return $this->DB->callProcedure('p_ch_khachhang_get_byid(?)',$thamso);
	 }
	 
	 
 }
 ?>