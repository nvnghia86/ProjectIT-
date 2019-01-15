<?php

require "../core/MySQLHelper.php";

try {
	$email = $_REQUEST['email'];
	$ho_ten = $_REQUEST['ho_ten'];
	$mat_khau = $_REQUEST['mat_khau'];
	$mat_khau_lai = $_REQUEST['mat_khau_lai'];
	//echo "$email - $ho_ten - $mat_khau";

	if($email == "" || $email == null || strlen($email)<3 ){
		header("Location: loi.php?thongbao=Khong duoc de trong email");
		exit;
	}

	$DB= new MySQLHelper();
	$mat_khau = md5($mat_khau);
	$params = array(0, $email ,$ho_ten, $mat_khau,1);
	$ketqua =$DB->callProcedure('p_tai_khoan_save(?,?,?,?,?)',$params);

	// echo "<pre>";
	// print_r($ketqua);
	if($ketqua[0]['MA_LOI'] == "SUC"){
		header("Location: dangnhap.php");
	}

} catch (Exception $e) {
	header("Location: loi.php?thongbao= Lỗi: ".$e->message);
	exit;	
}





?>