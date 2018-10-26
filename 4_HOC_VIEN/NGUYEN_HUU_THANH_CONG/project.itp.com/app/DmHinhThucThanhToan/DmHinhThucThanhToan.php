<?php
/**
 * App quản lý danh mục hình thức thanh toán
 * Create: 22-10-2018
 * @author MrHi <nghia.nvnghia@gmail.com>
 * @version 1.0
 */
session_start();
ob_start();

if ( !defined('AREA') ) {
    die('Access denied');
}

?>
<?php
class DmHinhThucThanhToanApp extends AppObject {
    public $app_name="DmHinhThucThanhToan";
    public $dir_layout="cahd_skin"; 
    public $layout="admin";
    public $page_title = "Quản lý danh mục hình thức thanh toán";

    public function __construct() {
        $this->authen();
        parent::__construct();
    }

    public function display(){
        $this->dir_layout="cahd_skin";
        $this->layout = isset($_REQUEST["layout"])?$_REQUEST["layout"]:"admin"; 

        if(isset($_GET["action"])){
            $this->{'act'.$_GET["action"]}();
        }else{
            $this->view = isset($_REQUEST["view"])?$_REQUEST["view"]:"DanhSach"; 
            parent::display();
        }  
    }

}