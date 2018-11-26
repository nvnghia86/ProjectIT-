<html>
<?php

	$taikhoan = 'admin';
	$matkhau = 'admin';
	$token = 'ABDGRSGDGDAGFDKNKSHDHFK';


	$tk=isset($_POST['tai_khoan']) ? $_POST['tai_khoan'] :'0';
	$mk=isset($_POST['mat_khau']) ? $_POST['mat_khau'] :'0';
	$chk=isset($_POST['check']) ? $_POST['check'] :'0';
	
	if($tk===$taikhoan&$mk===$matkhau&$chk==1){
	setcookie('TAI_KHOAN',$taikhoan,time()+ 60*2,'/');
	setcookie('TOKEN',$token,time()+ 60*2,'/');
	echo "Xin chào: ".$_COOKIE['TAI_KHOAN'];
	}
	else
		if($tk===$taikhoan&$mk===$matkhau){
			echo "Xin chào: ". $taikhoan." ";
			echo "Tick ghi nhớ để lưu vào cookie";
		}
		else{
			echo "Tài khoản hoặc mật khẩu không chính xác";
		}
?>
<script>
	function check_input(){
		var x;
		var tk = document.forms["reg_form"]["tai_khoan"].value;
		var mk = document.forms["reg_form"]["mat_khau"].value;
		var chk = document.forms["reg_form"]["check"].value;
		if(tk == ""||mk == ""){
		alert("Nhập đủ thông tin");
		return false;
		}
	}
</script>


<body>
	<div style="margin-left:200px;color:red">
	</div>
	<form name="reg_form" action="dangnhap.php" method="post" onsubmit="return check_input()">
	<table border="1" style="min-width:500px">
		<tr>
			<td colspan="3">Thông tin đăng nhập của khách hàng</td>
		</tr>
		<tr>
			<td rowspan="5"><img src="anh.PNG"></td>
			<tr>
				<td>Tài khoản</td>
				<td><input name="tai_khoan" type="text" size="50px"></input></td>
			</tr>
			<tr>
				<td>Mật khẩu</td>
				<td><input name="mat_khau" type="password" size="50px"></input></td>
			</tr>
			<tr>
				<td></td>
				<td><input name="check" type="checkbox" value="1"> Ghi nhớ</input></td>
			</tr>
			<tr>
				<td><input type="submit" value="Đăng nhập"></input></td>
				<td><input type="reset" value="Nhập lại"></input></td>
			</tr>
		</tr>
	</table>
	</form>
</body>
</html>