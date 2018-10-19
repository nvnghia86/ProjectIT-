<?php
session_start();
ob_start();

if ( !defined('AREA') ) {die('Access denied');}


require_once AppObject::getBaseFile('app/ht_tai_khoan/models/ht_tai_khoan.php');
require_once AppObject::getBaseFile('app/ht_tai_khoan/models/ht_don_vi.php');
require_once AppObject::getBaseFile('app/ht_vai_tro/models/ht_vai_tro.php');
require_once AppObject::getBaseFile('libs/phpJsonMapper/JsonMapper.php');
class Ht_tai_khoanApp extends AppObject{
	public $app_name="ht_tai_khoan";
        
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
                    case "taikhoan_lietke":
                        $rsp = $this->ajax_taikhoan_lietke();
                        break;
                    case "donvi_lietke":
                        $rsp = $this->ajax_donvi_lietke();
                        break;
                    case "vaitro_lietke":
                        $rsp = $this->ajax_vaitro_lietke();
                        break;
                    case "taikhoan_luu":
                        $rsp = $this->ajax_taikhoan_luu();
                        break;
                    default:
                        $rsp = new DataResponse("ERR", "Lỗi: Tác vụ không hợp lệ.",NULL);
                        break;
                }
                echo json_encode($rsp);
            }
	}

        public function ajax_taikhoan_lietke() {
            try {
                $TaiKhoan = new ht_tai_khoan();
                $rsp = $TaiKhoan->find_01();
                return $rsp;
            } catch (Exception $ex) {
                $rsp = new DataResponse("ERR", "Loi: " . $ex->getMessage(),NULL);
                return $rsp;
            }
        }
        
        public function ajax_donvi_lietke() {
            try {
                $DonVi = new ht_don_vi();
                $rsp = $DonVi->find_01();
                return $rsp;
            } catch (Exception $ex) {
                $rsp = new DataResponse("ERR", "Loi: " . $ex->getMessage(),NULL);
                return $rsp;
            }
        }
        
        public function ajax_vaitro_lietke() {
            try {
                $VaiTro = new HT_VAI_TRO();
                $rsp = $VaiTro->find_01();
                return $rsp;
            } catch (Exception $ex) {
                $rsp = new DataResponse("ERR", "Loi: " . $ex->getMessage(),NULL);
                return $rsp;
            }
        }
        
        public function ajax_taikhoan_luu() {
            try {
                $json = json_decode(file_get_contents('php://input'));
                $mapper = new JsonMapper();
                $TaiKhoan = $mapper->map($json, new ht_tai_khoan());
                $rsp = $TaiKhoan->save();
                return $rsp;
            } catch (Exception $ex) {
                $rsp = new DataResponse("ERR", "Loi: " . $ex->getMessage(),NULL);
                return $rsp;
            }
        }
        
        public function ajax_delete() {
            try {
                $json = json_decode(file_get_contents('php://input'));
                $mapper = new JsonMapper();
                $VaiTro = $mapper->map($json, new HT_VAI_TRO());
                $rsp = $VaiTro->delete();
                return $rsp;
            } catch (Exception $ex) {
                $rsp = new DataResponse("ERR", "Loi: " . $ex->getMessage(),NULL);
                return $rsp;
            }
        }
}

