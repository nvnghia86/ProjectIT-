<?php
/**
 * App quản lý file
 * Create: 2017-10-14
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
class FilemanagerApp extends AppObject {
    public $app_name="filemanager";
    public $dir_layout="cahd_skin"; 
    public $layout="admin";
    public $page_title = "Quản lý file";

    public function __construct() {
        $this->authen();
        parent::__construct(); 
    }

    public function display() {

	$task = "";
        if (isset($_REQUEST['task'])) {
            $task = $_REQUEST['task'];
        }

        $view = isset($_REQUEST['view'])?$_REQUEST['view']:"";
       
        switch ($view) {
            case "": self::viewDefault();
                break;
            default: self::viewDefault();
        }
    }

    public function viewDefault() {
        $this->view="default";
        // $this->layout="admin";
        parent::display();
    }

}