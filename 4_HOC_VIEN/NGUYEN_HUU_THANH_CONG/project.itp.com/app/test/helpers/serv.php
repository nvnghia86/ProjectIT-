<?php
define('AREA','A');
require '../../../init.php';
require_once ('../template.php');
$act = isset($_POST['act']) ? substr(trim($_POST['act']),0,10) : "";
switch ($act) {
    case 'add':
        $status="success";
        $message="success";
        $returndata = "success";
        echo json_encode(array('status' => $status, 'message' => $message, 'returndata' => $returndata));
        break;
    default:
        break;
}

