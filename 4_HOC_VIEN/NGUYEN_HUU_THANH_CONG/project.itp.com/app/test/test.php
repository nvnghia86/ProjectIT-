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
class TestApp extends AppObject {
    public $app_name="test";
    public $dir_layout="cahd_skin"; 
    public $layout="admin";
    public $page_title = "Test";

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
            case "izimodal": self::viewIziModal();
                break;
            
            case "iziModal_testModule": self::viewIziModalModule();
                break;
            default: self::viewDefault();
        }
    }

    public function viewDefault() {
        $this->view="default";
        $this->layout="admin";
        parent::display();
    }
    
    public function viewIziModal() {
        $this->view="iziModal";
        $this->layout="admin";
        parent::display();
    }
    
    public function viewIziModalModule() {
        $this->view="iziModal_testModule";
        $this->layout="admin";
        parent::display();
    }

}