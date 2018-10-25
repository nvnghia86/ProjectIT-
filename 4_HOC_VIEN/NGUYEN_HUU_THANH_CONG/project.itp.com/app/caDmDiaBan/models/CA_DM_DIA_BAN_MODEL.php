<?php

require_once AppObject::getBaseFile('core/class.database.php');

class CA_DM_DIA_BAN_MODEL {
    public $ID_DM_DIA_BAN;
    public $MA;
    public $TEN;
    public $MO_TA;
    public $TRANG_THAI;
    public $ID_NHOM;
    public $ID_DM_DIA_BAN_CHA;
    public $LFT;
    public $RHT;
    public $LVL;
    
    public  $TREE = array();

    public function list_all() {
        $DB = new Database();
        try {
            $sql = "call p_dm_diaban_list_all()";
            $rs= $DB->queryAll($sql);
            $this->TREE = array();
            self::Tree_prepare($rs);
            $rs  = $this->TREE;
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
            $sql = "call p_dm_diaban_save("
                    . "'$this->ID_DM_DIA_BAN',"
                    . "'$this->MA',"
                    . "'$this->TEN',"
                    . "'$this->MO_TA',"
                    . "'$this->TRANG_THAI',"
                    . "'$this->ID_NHOM',"
                    . "'$this->ID_DM_DIA_BAN_CHA'"
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
            $sql = "call p_dm_diaban_delete('$this->ID_DM_DIA_BAN')";
            $rs= $DB->queryAll($sql);
            $rsp = new DataResponse($rs[0]['MA_LOI'], $rs[0]['THONG_BAO'],$rs[0]['KET_QUA']);
            return $rsp;
        } catch (Exception $ex) {
            $rsp = new DataResponse("ERR", "Loi: " . $ex->getMessage(), NULL);
            return $rsp;
        }
    }
    
    // Chuẩn hóa cây
    public function Tree_prepare($table, $parent_id = 0, $char = '')
    {
        foreach ($table as $key => $item)
        {
            // Nếu là chuyên mục con thì hiển thị
            if ($item['ID_DM_DIA_BAN_CHA'] == $parent_id)
            {
                $item['PATH'] = $char;
                array_push($this->TREE, $item);
                // Xóa chuyên mục đã lặp
                unset($table[$key]);
                // Tiếp tục đệ quy để tìm chuyên mục con của chuyên mục đang lặp
                self::Tree_prepare($table, $item['ID_DM_DIA_BAN'], $char.'|---');
            }
        }
    }

}
