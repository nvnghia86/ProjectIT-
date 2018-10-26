<?php

require_once AppObject::getBaseFile('core/class.database.php');

class ht_don_vi {

    public $ID_DON_VI;
    public $MA;
    public $TEN_DON_VI;
    public $ID_DON_VI_CHA;
    public $MO_TA;
    public $TRANG_THAI;

    public function find_01() {
        $DB = new Database();
        try {
            $data = json_decode(file_get_contents('php://input'), true);
            $sql = "call p_ht_don_vi_find_01('')";
            $rs= $DB->queryAll($sql);
            $rsp = new DataResponse('SUC', '',$rs);
            return $rsp;
        } catch (Exception $ex) {
            $rsp = new DataResponse("ERR", "Loi: " . $ex->getMessage(), NULL);
            return $rsp;
        }
    }

}
