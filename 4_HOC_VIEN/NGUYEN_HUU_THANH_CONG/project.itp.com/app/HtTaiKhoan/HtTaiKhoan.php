<?php
/**
 * App quản lý Hệ Thống Tài Khoản
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
class HtTaiKhoanApp extends AppObject {
    public $app_name="HtTaiKhoan";
    public $dir_layout="cahd_skin"; 
    public $layout="admin";
    public $page_title = "Quản lý Hệ Thống Tài Khoản";

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