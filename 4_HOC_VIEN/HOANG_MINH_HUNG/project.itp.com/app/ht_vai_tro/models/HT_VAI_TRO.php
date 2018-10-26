<?php

require_once AppObject::getBaseFile('core/class.database.php');

class HT_VAI_TRO {

    public $ID_VAI_TRO;
    public $MA;
    public $TEN;
    public $MO_TA;
    public $TRANG_THAI;

    public function find_01() {
        $DB = new Database();
        try {
            $data = json_decode(file_get_contents('php://input'), true);
            $sql = "call p_ht_vai_tro_find_01()";
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
            $sql = "call p_ht_vai_tro_save("
                    . "'$this->ID_VAI_TRO',"
                    . "'$this->MA',"
                    . "'$this->TEN',"
                    . "'$this->MO_TA',"
                    . "'$this->TRANG_THAI'"
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
