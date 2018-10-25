
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
header('Access-Control-Allow-Origin: *');
class CaDmDiaBanApp extends AppObject {
    public $app_name="CaDmDiaBan";
    public $dir_layout="cahd_skin"; // thư mục chứa layout trong skin
    public $layout="admin";
    public $page_title = "Quản lý địa bàn";

    public function __construct() {
        $this->authen();
        parent::__construct();
    }

    public function display(){
        $this->dir_layout="cahd_skin";
        $this->layout = isset($_REQUEST["layout"])?$_REQUEST["layout"]:"admin"; 

        if(isset($_GET["action"])){
            $this->{'act'.$_GET["action"]}();
        }else{
            $this->view = isset($_REQUEST["view"])?$_REQUEST["view"]:"DiaBanDanhSach"; 
            parent::display();
        }  
    }
    
    public function actGetTreeData(){
        try {
            header('Access-Control-Allow-Origin: *');
            $DB = new MySQLHelper();
            $data = $DB->callProcedure('p_dm_diaban_find_all');
           
            $itemsByReference = array();
 
            // Build array of item references:
            foreach($data as $key => &$item) {
               $itemsByReference[$item['ID_DM_DIA_BAN']] = &$item;
               // Children array:
               $itemsByReference[$item['ID_DM_DIA_BAN']]['children'] = array();
               // Empty data class (so that json_encode adds "data: {}" ) 
               $itemsByReference[$item['ID_DM_DIA_BAN']]['data'] = new StdClass();
            }

            // Set items as children of the relevant parent item.
            foreach($data as $key => &$item)
               if($item['ID_DM_DIA_BAN_CHA'] && isset($itemsByReference[$item['ID_DM_DIA_BAN_CHA']]))
                  $itemsByReference [$item['ID_DM_DIA_BAN_CHA']]['children'][] = &$item;

            // Remove items that were added to parents elsewhere:
            foreach($data as $key => &$item) {
               if($item['ID_DM_DIA_BAN_CHA'] && isset($itemsByReference[$item['ID_DM_DIA_BAN_CHA']]))
                  unset($data[$key]);
            }
            // Encode:
            echo json_encode($data);
        } catch (Exception $ex) {
            $data = new DataResponse("ERR", "Loi: " . $ex->getMessage() . json_encode($_req), NULL);
            echo json_encode($data);
        }
    }

}
