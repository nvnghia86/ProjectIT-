<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>File nhận</title>
</head>
<body>
	<?php 
		$tk = $_POST['tai_khoan'];
		$mk = $_POST['matkhau'];
		if (isset($tk)) {
			if ($tk == 'admin'&& $mk=='123') {
			echo 'Đăng nhập thành công!';
			}
			else
				echo 'Đăng nhập thất bại!';
		}	
		else
			echo 'Không tồn tại tài khoản!';
	 ?>
</body>
</html>