<?php

require_once AppObject::getBaseFile('core/class.database.php');

class ht_tai_khoan {

    public $ID_TAI_KHOAN;
    public $TAI_KHOAN;
    public $MAT_KHAU;
    public $HO_TEN;
    public $EMAIL;
    public $ID_VAI_TRO;
    public $TRANG_THAI;
    public $ID_DON_VI;
    public $SO_DIEN_THOAI;
    
    public $VAI_TRO_TEN;
    public $DON_VI_TEN;

    public function find_01() {
        $DB = new Database();
        try {
            $data = json_decode(file_get_contents('php://input'), true);
            $sql = "call p_ht_tai_khoan_find_01('')";
            $rs= $DB->queryAll($sql);
            $rsp = new DataResponse('SUC', '',$rs);
            return $rsp;
        } catch (Exception $ex) {
            $rsp = new DataResponse("ERR", "Loi: " . $ex->getMessage(), NULL);
            return $rsp;
        }
    }
    
    public function save() {
        $DB = new Database();
        try {
            $data = json_decode(file_get_contents('php://input'), true);
            $sql = "call p_ht_tai_khoan_save("
                    . "'$this->ID_TAI_KHOAN',"
                    . "'$this->TAI_KHOAN',"
                    . "'$this->MAT_KHAU',"
                    . "'$this->HO_TEN',"
                    . "'$this->EMAIL',"
                    . "'$this->ID_VAI_TRO',"
                    . "'$this->TRANG_THAI',"
                    . "'$this->ID_DON_VI',"                    
                    . "'$this->SO_DIEN_THOAI'"
                    . ")";
            $rs= $DB->queryAll($sql);
            $rsp = new DataResponse($rs[0]['MA_LOI'], $rs[0]['THONG_BAO'],$rs[0]['KET_QUA']);
            return $rsp;
        } catch (Exception $ex) {
            $rsp = new DataResponse("ERR", "Loi: " . $ex->getMessage(), NULL);
            return $rsp;
        }
    }

    public function delete() {
        $DB = new Database();
        try {
            $data = json_decode(file_get_contents('php://input'), true);
            $sql = "call p_ht_vai_tro_delete('$this->ID_VAI_TRO')";
            $rs= $DB->queryAll($sql);
            $rsp = new DataResponse($rs[0]['MA_LOI'], $rs[0]['THONG_BAO'],$rs[0]['KET_QUA']);
            return $rsp;
        } catch (Exception $ex) {
            $rsp = new DataResponse("ERR", "Loi: " . $ex->getMessage(), NULL);
            return $rsp;
        }
    }
    
    
}
