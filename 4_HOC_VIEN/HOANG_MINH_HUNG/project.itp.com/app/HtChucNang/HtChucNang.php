
<?php
/**
 * App quản lý công văn 
 * Create: 08-10-2017
 * @author Hieubd <buiduchieuvnu@gmail.com>
 * @version 1.0
 */
session_start();
ob_start();

if ( !defined('AREA') ) {
    die('Access denied');
}
header('Access-Control-Allow-Origin: *');
class HtChucNangApp extends AppObject {
    public $app_name="HtChucNang";
    public $dir_layout="cahd_skin"; // thư mục chứa layout trong skin
    public $layout="admin";
    public $page_title = "Quản lý chức năng";

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
