<?php
	session_start();
	
	if(isset($_SESSION['DA_LOGIN'])){
		if($_SESSION['DA_LOGIN']=='1'){
			header('location: bangdieukhien.php');
		}
	}
	
	if(isset($_COOKIE['DA_LOGIN'])){
		if($_COOKIE['DA_LOGIN'] == '1'){
			header('location: bangdieukhien.php');
		}
	}

	/* echo '<pre>'; print_r($_REQUEST); */
	$thongbao="";
	if(isset($_REQUEST['taikhoan'])){
		$taikhoan = $_REQUEST['taikhoan'];
		$matkhau = $_REQUEST['matkhau'];
		if($taikhoan == 'admin' && $matkhau=='123'){
			
			$_SESSION['DA_LOGIN']="1";
			$_SESSION['TAI_KHOAN']=$taikhoan;
			
			if(isset($_REQUEST['ghinho'])){
				setcookie('DA_LOGIN','1',time() + 60*60*24*7);
				setcookie('TAI_KHOAN',$taikhoan,time() + 60*60*24*7);
			}
			header('location: bangdieukhien.php');
		}else{
			$thongbao="Tài khoản hoặc mật khẩu không hợp lệ";
		}
	}
?>