<?php
	require('../modules/module-login.php');
	session_start();
	$_SESSION['DA_LOGIN'] = "0";
	$_SESSION['taikhoan'] = "";
	setcookie("DA_LOGIN","0",time() - 1000);
	setcookie("TAI_KHOAN",$taikhoan,time() - 1000);
	header("location: login.php");
?>