<h1>Biến $_COOKIE</h1>
<?php
	$taikhoan = 'ADMIN';
	$token = 'jsdfhw87uyefh';
	setcookie('TAI_KHOAN',$taikhoan,time()+ 60*2,'/');
	setcookie('TOKEN',$token,time()+ 60*2,'/');
	echo 'Xin chào ',$_COOKIE['TAI_KHOAN'];
?>