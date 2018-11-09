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
class TrangChuApp extends AppObject {
    public $app_name="TrangChu";
    public $dir_layout="tgdd_skin"; 
    public $layout="trangchu";
    public $page_title = "Trang chủ | Thế giới di động";

    public function __construct() {
        $this->authen();
        parent::__construct();
    }

    public function display(){
        $this->dir_layout="tgdd_skin";
        $this->layout = isset($_REQUEST["layout"])?$_REQUEST["layout"]:"trangchu"; 

        if(isset($_GET["action"])){
            $this->{'act'.$_GET["action"]}();
        }else{
            $this->view = isset($_REQUEST["view"])?$_REQUEST["view"]:"default"; 
            parent::display();
        }  
    }

}