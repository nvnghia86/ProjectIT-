<?php
session_start();
ob_start();

if ( !defined('AREA') ) {die('Access denied');}


require_once AppObject::getBaseFile('app/ht_don_vi/models/HT_DON_VI_MODEL.php');
require_once AppObject::getBaseFile('libs/phpJsonMapper/JsonMapper.php');
class Ht_don_viApp extends AppObject{
	public $app_name="ht_don_vi";
        
	public function __construct(){
            parent::__construct();
	}
        
	public function display(){
            $this->dir_layout="cahd_skin";
            $this->layout="admin";
            $view = isset($_REQUEST["view"])?$_REQUEST["view"]:"danh_sach"; 
            
            if($view!="ajax"){
                $this->view=$view;
                parent::display();
            }else{
                $task=isset($_REQUEST["task"])?$_REQUEST["task"]:"task";
                $rsp = NULL;
                switch ($task) {
                    case "find_01":
                        $rsp = $this->ajax_find_01();
                        break;
                    case "save":
                        $rsp = $this->ajax_save();
                        break;
                    case "delete":
                        $rsp = $this->ajax_delete();
                        break;
                    default:
                        $rsp = new DataResponse("ERR", "Loi: Tac vu khong hop le",NULL);
                        break;
                }
                echo json_encode($rsp);
            }
	}

        public function ajax_find_01() {
            try {
                $TU_KHOA = json_decode(file_get_contents('php://input'));
                $DonVi = new HT_DON_VI_MODEL();
                $rsp = $DonVi->find_01($TU_KHOA);
                return $rsp;
            } catch (Exception $ex) {
                $rsp = new DataResponse("ERR", "Loi: " . $ex->getMessage(),NULL);
                return $rsp;
            }
        }
}

