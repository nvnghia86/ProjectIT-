 <?php
 require('Cores/MySQLHelper.php');
 
 class THANH_VIEN{
	/*  Các thuộc tính */
	public $Id_ThanhVien=0;
	public $HoTen;
	public $QueQuan;
	public $NamSinh;
	
	public function __construct(){
	$this->DB= new MySQLHelper(DB_HOST,DB_USER,DB_PASS,DB_NAME);
	}
	
	public function Save(){
		$thamso = array($this->Id_ThanhVien,$this->HoTen,$this->QueQuan,$this->NamSinh);
		return $this->DB->callProcedure('p_ch_thanhvien_save(?,?,?,?)',$thamso);
	}
	
	public function Del(){
		$thamso = array($this->Id_ThanhVien);
		return $this->DB->callProcedure('p_ch_thanhvien_del(?)',$thamso);
	}
	
	public function FindAll(){
		return $this->DB->callProcedure('p_ch_thanhvien_find_all()');
	}
	
	public function FindKey($pKey){
		$thamso = array($pKey);
		return $this->DB->callProcedure('p_ch_thanhvien_find_key(?)',$thamso);
	}
	
	 public function GetById(){
		 $thamso = array($this->Id_ThanhVien);
		 return $this->DB->callProcedure('p_ch_thanhvien_get_byid(?)',$thamso);
	 }
	 
	 
 }
 ?>