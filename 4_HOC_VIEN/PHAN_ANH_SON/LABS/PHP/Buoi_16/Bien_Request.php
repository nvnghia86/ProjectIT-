<?php
	
	$ten = $_GET['ten'];
	$taikhoan = $_POST['taikhoan'];
	$matkhau = $_POST['matkhau'];
	echo "Xin chào: $ten, Tài khoản: $taikhoan, Mật khẩu: $matkhau ";
	echo "<h3>Thực hành biến Request</h3>";
	echo "Xin chào".$_REQUEST['ten'].", Tài khoản:" .$_REQUEST['taikhoan'].", Mật khẩu:  ".$_REQUEST['matkhau'];
?>