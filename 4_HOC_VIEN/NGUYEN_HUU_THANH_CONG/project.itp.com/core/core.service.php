<?php

define('AREA', 'A');
require '../init.php';
$act = isset($_POST['act']) ? substr(trim($_POST['act']), 0, 50) : "";

//echo 'ACTION: '.$act;

switch ($act) {
    case 'test':
        echo serv_test();
        break;
    case 'get_data':
        echo getData();
        break;

    default:
        echo serv_err();
        break;
}

function getData() {
    $status = "ERR";
    $message = "ERR Other!";
    $data = "";

    try {
        $sCmd = isset($_POST['cmd']) ? $_POST['cmd'] : "";
        $sParrams = isset($_POST['parrams']) ? $_POST['parrams'] : "{}";
        if ($sCmd == "") {
            $status = "ERR";
            $message = "ERR Command invalid!";
        }

        $sql = " CALL $sCmd('$sParrams')";
        $db = new Database;
        $data = $db->queryAll($sql);
        $status = "SUC";
        $message = "Get data success! $sql";
    } catch (Exception $ex) {
        $message = $ex->getMessage() . '-- '. $sql;
    }
    
    return json_encode(array('status' => $status, 'message' => $message, 'data' => $data));

}

function serv_test() {
    $status = "SUC";
    $message = "Test success messeage!";
    $data = "Test success data!";
    return json_encode(array('status' => $status, 'message' => $message, 'data' => $data));
}

function serv_err() {
    $status = "ERR001";
    $message = "Action requested invalid!";
    $data = "";
    return json_encode(array('status' => $status, 'message' => $message, 'data' => $data));
}

function serv_err_data() {
    $status = "ERR002";
    $message = "Data requested invalid!";
    $data = "";
    return json_encode(array('status' => $status, 'message' => $message, 'data' => $data));
}
?>


