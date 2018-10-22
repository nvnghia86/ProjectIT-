<?php

/**
 * App Hỗ trợ truy xuất CSDL MySQL
 * Create: 08-10-2017
 * @author Hieubd <buiduchieuvnu@gmail.com>
 * @version 1.0
 */
session_start();
ob_start();

if (!defined('AREA')) {
    die('Access denied');
}

require_once AppObject::getBaseFile('app/CoreData/models/AjxRequest.php');
require_once AppObject::getBaseFile('libs/phpJsonMapper/JsonMapper.php');
require_once AppObject::getBaseFile('libs/phpJsonMapper/Exception.php');
?>
<?php

class CoreDataApp extends AppObject {

    public $app_name = "CoreData";

    public function __construct() {
        parent::__construct();
    }

    public function display() {
        $this->dir_layout = "cahd_skin";
        $this->layout = "admin";
        $task = isset($_REQUEST["task"]) ? $_REQUEST["task"] : "task";
        $rsp = NULL;
        switch ($task) {
            case "AjxCallProcGet":
                $rsp = $this->CallProcGet();
                break;
            case "AjxCallProcSet":
                $rsp = $this->CallProcSet();
                break;
            case "CallProcGetTreeData":
                $rsp = $this->CallProcGetTreeData();
                break;
            default:
                $rsp = new DataResponse("ERR", "Loi: Tac vu khong hop le", NULL);
                break;
        }
        echo json_encode($rsp);
    }

    public function CallProcGet() {
        try {
            $_req = json_decode(file_get_contents('php://input'), true);
            //print_r($_req);
            $DB = new MySQLHelper();
            $_tmp = '(';
            if (is_array($_req['PARAMS'])) {
                for ($i = 0; $i < count($_req['PARAMS']); $i++) {
                    $_tmp .= '?,';
                }
                $_tmp = rtrim($_tmp, ",");
                $_params = array_values($_req['PARAMS']);
            } else {
                $_params = array();
            }
            $_tmp .= ')';
            $_procName = $_req['COMMAND'] . $_tmp;
            $_rs = $DB->callProcedure($_procName, $_params);
            $rsp = new DataResponse("SUC", 'Lay du lieu thanh cong', $_rs);
            return $rsp;
        } catch (Exception $ex) {
            $rsp = new DataResponse("ERR", "Loi: " . $ex->getMessage() . json_encode($_req), NULL);
            return $rsp;
        }
    }

    public function CallProcSet() {
        try {
            $_req = json_decode(file_get_contents('php://input'), true);
            //print_r($_req);
            $DB = new MySQLHelper();
            $_tmp = '(';
            if (is_array($_req['PARAMS'])) {
                for ($i = 0; $i < count($_req['PARAMS']); $i++) {
                    $_tmp .= '?,';
                }
                $_tmp = rtrim($_tmp, ",");
                $_params = array_values($_req['PARAMS']);
            } else {
                $_params = array();
            }
            $_tmp .= ')';
            $_procName = $_req['COMMAND'] . $_tmp;
            //print_r($_params);
            $_rs = $DB->callProcedure($_procName, $_params);
            $rsp = new DataResponse($_rs[0]['MA_LOI'], $_rs[0]['THONG_BAO'], $_rs[0]['KET_QUA']);
            return $rsp;
        } catch (Exception $ex) {
            $rsp = new DataResponse("ERR", "Loi: " . $ex->getMessage() . json_encode($_req), NULL);
            return $_rs;
        }
    }
    
    public function CallProcGetTreeData() {
        try {
            $_req = json_decode(file_get_contents('php://input'), true);
            //print_r($_req);
            $DB = new MySQLHelper();
            $_tmp = '(';
            if (is_array($_req['PARAMS'])) {
                for ($i = 0; $i < count($_req['PARAMS']); $i++) {
                    $_tmp .= '?,';
                }
                $_tmp = rtrim($_tmp, ",");
                $_params = array_values($_req['PARAMS']);
            } else {
                $_params = array();
            }
            $_tmp .= ')';
            $_procName = $_req['COMMAND'] . $_tmp;
            $pIdName = $_req['ID'];
            $pParentName = $_req['ID_PARENT'];

            $_rs = $DB->callProcedure($_procName, $_params);
            //print_r($_rs);
            // Tao du lieu Tree
            $itemsByReference = array();
            // Build array of item references:
            foreach($_rs as $key => &$item) {
               $itemsByReference[$item[$pIdName]] = &$item;
               // Children array:
               $itemsByReference[$item[$pIdName]]['children'] = array();
               // Empty data class (so that json_encode adds "data: {}" ) 
               $itemsByReference[$item[$pIdName]]['data'] = new StdClass();
            }

            // Set items as children of the relevant parent item.
            foreach($_rs as $key => &$item)
               if($item[$pParentName] && isset($itemsByReference[$item[$pParentName]]))
                  $itemsByReference [$item[$pParentName]]['children'][] = &$item;

            // Remove items that were added to parents elsewhere:
            foreach($_rs as $key => &$item) {
               if($item[$pParentName] && isset($itemsByReference[$item[$pParentName]]))
                  unset($_rs[$key]);
            }
            
            return $_rs;
        } catch (Exception $ex) {
            $rsp = new DataResponse("ERR", "Loi: " . $ex->getMessage() . json_encode($_req), NULL);
            return $rsp;
        }
    }

}
