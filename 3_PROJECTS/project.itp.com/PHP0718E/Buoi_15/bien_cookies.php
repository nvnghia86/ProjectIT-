<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Biến - Cookies</title>
</head>
<body>
	<h1>Biến cookies</h1>
	<?php 
		$taiKhoan = 'Admin';
		$token = 'abcdef';
		setcookie('Tai_Khoan',$taiKhoan,time()+60*2,'');
		setcookie('Tocken',$token,time()+60*2,'');
		echo 'Xin chào!'.$_COOKIES['Tai_Khoan'];
	 ?>
</body>
</html>