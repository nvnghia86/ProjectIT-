<?php
$tk = $_POST['taikhoan'];
$mk = $_POST['matkhau'];
if ($tk=='admin'&&$mk=='12345') {
	echo 'đăng nhập thành công';
}
else{
	echo 'Đăng nhập thất bại';
	
}
?>
<br/>
	<a href="gui_request.php">Đăng nhập lại</a>