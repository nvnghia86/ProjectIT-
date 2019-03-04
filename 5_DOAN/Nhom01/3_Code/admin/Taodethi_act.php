<?php

require "../core/MySQLHelper.php";
$DB= new MySQLHelper();
try {

	$id = isset($_REQUEST['id'])? $_REQUEST['id']:'0';
	$act = isset($_REQUEST['act'])? $_REQUEST['act']:'';
	if ($act=='xoa') {
		$params = array($id);
		$ketqua =$DB->callProcedure('p_baithi_del(?)',$params);
		header("Location: Danhsachde.php");
		exit;
	}

	//echo $id;
	$tieu_de = isset($_REQUEST['tieu_de'])? $_REQUEST['tieu_de']:'';
	$mo_ta = isset($_REQUEST['mo_ta'])? $_REQUEST['mo_ta']:'';
	$id_tai_khoan = isset($_REQUEST['id_tai_khoan'])? $_REQUEST['id_tai_khoan']:'1';
	$hinh_anh = isset($_REQUEST['hinh_anh'])? $_REQUEST['hinh_anh']:'noimage.png';
	$ma_pin = isset($_REQUEST['ma_pin'])? $_REQUEST['ma_pin']:'0000';
	$trang_thai = isset($_REQUEST['trang_thai'])? $_REQUEST['trang_thai']:'0';
	$ngay_tao = $_REQUEST['ngay_tao'];
	
// echo $ngay_tao;
	
	$params = array($id ,$tieu_de,$mo_ta,$id_tai_khoan,$hinh_anh,$ma_pin,$trang_thai, $ngay_tao);
	if ($_REQUEST['nut_taode']) {
		$ketqua =$DB->callProcedure('p_baithi_save(?,?,?,?,?,?,?,?)',$params);

	// print_r($params);
		if($_REQUEST['nut_taode']=='luu'){
			header("Location: Danhsachde.php");
		}else if($_REQUEST['nut_taode']=='luu_them'){
			header("Location: Themcauhoi.php");
		}
		else{
			header("Location: Taodethi.php");
		}
	}else{
		header("Location: Taodethi.php");
	}
	
	

} catch (Exception $e) {
	header("Location: loi.php?thongbao= Lỗi: ".$e->message);
	exit;	
}



?>