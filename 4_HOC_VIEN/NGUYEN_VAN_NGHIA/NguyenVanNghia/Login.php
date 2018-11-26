<?php session_start();
    if(isset($_POST['submit'])){
        $_SESSION['name'] = $_POST['dangnhap'];
    }
	$taikhoan = $_POST['taikhoan'];
	$matkhau = $_POST['matkhau'];
	
	if($taikhoan=='admin' && $matkhau=='admin'){
		echo 'Đăng nhập thành công!<br>';
		echo "Xin Chào Admin";
	}else{
		echo 'Đăng nhập thất bại!';
	}
	if (isset($_POST['remember'])) {
        setcookie('user', $taikhoan, time() + 7200, "/", '', 0, 0);
        setcookie('pass', $matkhau, time() + 7200, "/", '', 0, 0);
    }
?>