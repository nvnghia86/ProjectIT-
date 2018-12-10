<?php
/**
 * App quản lý danh mục bảo hành
 * Create: 08-10-2017
 * @author Hieubd <buiduchieuvnu@gmail.com>
 * @version 1.0
 */
session_start();
ob_start();

if ( !defined('AREA') ) {
    die('Access denied');
}

?>
<?php
class GianHangApp extends AppObject {
    public $app_name="GianHang";
    public $dir_layout="tgdd_skin"; 
    public $layout="chitiet_sanpham";
    public $page_title = "Trang chủ | Thế giới di động";

    public function __construct() {
        $this->authen();
        parent::__construct();
    }

    public function display(){
        $this->dir_layout="tgdd_skin";
        $this->layout = isset($_REQUEST["layout"])?$_REQUEST["layout"]:"chitiet_sanpham"; 

        if(isset($_GET["action"])){
            $this->{'act'.$_GET["action"]}();
        }else{
            $this->view = isset($_REQUEST["view"])?$_REQUEST["view"]:"default"; 
			if($this->view=='giohang'){
				$this->layout="giohang";
			}
			
			if($this->view=='dathang'){
				$this->layout="giohang";
			}
			
			if($this->view=='thongbao'){
				$this->layout="giohang";
			}
            parent::display();
        }  
    }
	
	public function actThemGioHang(){
		$id = $_GET['id'];
		$soluong = isset($_GET['soluong'])?$_GET['soluong']:1;
		if(isset($_SESSION['giohang'])){
			$giohang = $_SESSION['giohang'];
		}else{
			$giohang = array();
		}
		$trung = false;
		for($i=0;$i< count($giohang); $i++){
			if($giohang[$i]['id']==$id){
				$giohang[$i]['soluong'] = (int)$giohang[$i]['soluong'] + 1;
				$trung = true;
			}
		}
		
		if(!$trung){
			$sanpham = array('id'=>$id,'soluong'=>$soluong);
			array_push($giohang,$sanpham);
		}
		

		$_SESSION['giohang'] = $giohang;
		header('Location: ?app=gianhang&view=giohang');
	}
	
	public function actHuyGioHang(){
		$giohang = array();
		$_SESSION['giohang'] = $giohang;
		header('Location: ?app=gianhang&view=giohang');
	}

	public function actXoaGioHang(){
		$id = $_GET['id'];
		if(isset($_SESSION['giohang'])){
			$giohang = $_SESSION['giohang'];
			foreach ($giohang as $key => $value){
				if($value['id']==$id){
					unset($giohang[$key]);
				}
			}
		}
		$_SESSION['giohang'] = $giohang;
		header('Location: ?app=gianhang&view=giohang');
	}
	
	public function actDatHang(){
		// 1. Lưu thông tin đơn hàng (khách hàng)
		$ten_nguoinhan = $_POST['ten_nguoinhan'];
		$sdt_nguoinhan = $_POST['sdt_nguoinhan'];
		$diachi_nguoinhan = $_POST['diachi_nguoinhan'];
		$ghichu = $_POST['ghichu'];
		$id_hinhthuc_thanhtoan = $_POST['id_hinhthuc_thanhtoan'];
		$DB = new MySQLHelper();
		$thamso = array(
			$ten_nguoinhan,
			$sdt_nguoinhan,
			$diachi_nguoinhan,
			$ghichu,
			$id_hinhthuc_thanhtoan
		);
		$data = $DB->callProcedure('p_ch_donhang_dathang(?,?,?,?,?)',$thamso);
		$kq = $data[0];
		$thongbao =$kq['THONG_BAO'];
		
		$id_donhang = $kq['KET_QUA'];
		
		//1. Lưu chi tiết đơn hàng
		if(isset($_SESSION['giohang'])){
			$giohang = $_SESSION['giohang'];
			foreach ($giohang as $key => $value){
				
				$thamso = array(
					$value['id'],
					$id_donhang,
					$value['soluong'],
					0
				);
				$data = $DB->callProcedure('p_ch_donhang_sanpham_them(?,?,?,?)',$thamso);
			}
		}	
		
		$this->actHuyGioHang();
		//print('<pre>');
		//print_r($data);
		header('Location: ?app=gianhang&view=thongbao&msg='.$thongbao);
	}
	
}









