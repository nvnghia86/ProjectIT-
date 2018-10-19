<h2>Biến $_COOKIES</h2>

<?php
	$taikhoan = 'ADMIN';
	$token = 'ABCDEFGHIJKLMNOPQUSWT';
	setcookie('TAI_KHOAN',$taikhoan,time()+ 60*2,'/');
	setcookie('TOKEN',$token,time()+ 60*2,'/');
?>