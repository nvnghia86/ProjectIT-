<?php
	require('../core/MySQLHelper.php');
	try{
		$email = $_REQUEST['email'];
		$ho_ten = $_REQUEST['ho_ten'];
		$mat_khau = $_REQUEST['mat_khau'];
		$mat_khau_lai = $_REQUEST['mat_khau_lai'];

		$DB = new MySQLHelper();
		$mat_khau = md5($mat_khau);
		$params = array(0, $email, $ho_ten, $mat_khau,1);
		$ketqua = $DB->callProcedure('p_tai_khoan_save(?,?,?,?,?)',$params);
			if(isset($_REQUEST['termOfService'])&&$_REQUEST['termOfService']=="yes"){
				if($ketqua[0]['MA_LOI']=='SUC'){
					echo "<script type='text/javascript'>";
					echo "alert('Đăng kí thành công!');";			
					echo "window.location.replace('dangnhap.php')";
					echo "</script>";
				}
			}else{
			   header("Location: Dangky.php?thongbao= Bạn phải chấp nhận điều khoản của chúng tôi!");
			}
	}catch(Exception $e){
		header("Location: loi.php?thongbao= Lỗi: ".$e->message);
		exit;
	}
?>