<?php

	$tk = $_POST['username'];
	$mk = $_POST['password'];
	
	if($tk=='admin' && $mk=='admin'){
		echo 'Đăng nhập thành công!';
		echo "Xin Chào Admin";
	}else{
		echo 'Đăng nhập thất bại!';
	}
	
?>
<br />

<br/>
<a href="DangNhap.php"> Đăng nhập lại</a>