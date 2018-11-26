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
		$sanpham = array('id'=>$id,'soluong'=>$soluong);
		array_push($giohang,$sanpham);
		$_SESSION['giohang'] = $giohang;
		header('Location: ?app=gianhang&view=giohang&layout=giohang');
	}

}









