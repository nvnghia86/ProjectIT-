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

?>
<?php
class DmBaoHanhApp extends AppObject {
    public $app_name="DmBaoHanh";
    public $dir_layout="cahd_skin"; 
    public $layout="admin";
    public $page_title = "Quản lý danh mục bảo hành";

    public function __construct() {
        if(empty($_SESSION["auth"]["tai_khoan"])) {
            header("Location: ".INDEX); 
            exit;
        }
        parent::__construct();
    }

    public function display() {
        $view = isset($_REQUEST['view'])?$_REQUEST['view']:"";
       
        switch ($view) {
            case "": self::viewDefault();
                break;
            default: self::viewDefault();
        }
    }

    public function viewDefault() {
        $this->view="default";
        $this->layout="admin";
        parent::display();
    }

}