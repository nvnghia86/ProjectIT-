<?php
	$tk = $POST['taikhoan'];
	$mk = $POST['matkhau'];
	
	if($tk=='admin' && $mk='=123')
		echo 'Đăng nhập thành công!';
	}else{
		echo 'Đăng nhập thất bại!';
	}

?>