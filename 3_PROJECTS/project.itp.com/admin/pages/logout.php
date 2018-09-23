<?php
	session_start();
	$_SESSION['DA_LOGIN']="0";
	$_SESSION['TAI_KHOAN']="";
	setcookie('DA_LOGIN',"0",time()-1000);
	setcookie('TAI_KHOAN',"",time()-1000);
	header('location: login.php');

?>