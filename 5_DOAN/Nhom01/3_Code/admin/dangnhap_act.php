<?php

require "../core/MySQLHelper.php";

try {
	$email = $_REQUEST['email'];
	$mat_khau = $_REQUEST['mat_khau'];

	$DB= new MySQLHelper();
	$mat_khau = md5($mat_khau);
	$params = array($email ,$mat_khau);
	$ketqua =$DB->callProcedure('p_tai_khoan_dangnhap(?,?)',$params);

	// echo "<pre>";
	// print_r($ketqua);
	if(count($ketqua)>0){
		header("Location: Danhsachde.php");
	}else{
		echo "<script type='text/javascript'>";
			echo "alert('Tài khoản hoặc mật khẩu không đúng!');";			
			echo "window.location.replace('Dangnhap.php')";
			echo "</script>";
		//header("Location: dangnhap.php?thongbao= Tài khoản hoặc mật khẩu không đúng.");
	}

} catch (Exception $e) {
	header("Location: loi.php?thongbao= Lỗi: ".$e->message);
	exit;	
}





?>