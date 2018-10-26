<?php
	$ten= $_GET['ten'];
	$taikhoan = $_POST['taikhoan'];
	$matkhau = $_POST['matkhau'];
	
	echo "Xin chao: $ten; Tai khoan: $taikhoan; Mật khẩu: $matkhau";
	
	echo '<h2>Lấy dữ liệu bằng biến $_REQUEST:</h2>';
		// Biến $_REQUEST thay cho cả $_POST và $_GET
	echo "Xin chào ".$_REQUEST['ten']."; Tài khoản:" .$_REQUEST['taikhoan']. "; Mật khẩu:".$_REQUEST['matkhau'] ;
?>