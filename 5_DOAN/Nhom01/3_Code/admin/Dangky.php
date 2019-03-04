<?php
	$thongbao = isset($_GET['thongbao'])?$_GET['thongbao']:'';
?>
<!DOCTYPE html>
<html>
<head>
	<title>Đăng ký tài khoản</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="../css/css_admin/style_dangkytaikhoan.css" />
</head>
<body>
<div class="header">
<div class="container">
	<div class="logo">
		<img src="../images/logokahoot.png" />
	</div>
	<div class="menu">
		<div class="login">
			<a href="../admin/Dangnhap.php"><button class="btn btn-primary">Đăng Nhập</button></a>
		</div>

		<div class="menu-name">
			<em>Đã có tài khoản?</em>
		</div>
	</div>
</div>
</div>
<form action="Dangky_act.php"  method="post" id="form_register">
<div class="content">
	<div class="container">
		<div class="row">
		<div class="col-sm-4" ></div>
		<div class="col-sm-4" >
			<h3 align="center" style="color: blue">ĐĂNG KÝ TÀI KHOẢN</h3>
			<div class="form-group">
			  <label for="optional">Email <span class="sao">(*)</span></label>
			  <br /><span class="info_kt" id="email_error"></span>
			  <input type="text" class="form-control" id="email" name="email"  />
			</div>
			
			<div class="form-group">
			  <label for="optional">Họ và tên <span class="sao">(*)</span></label>
			  <br /><span class="info_kt" id="ho_ten_error"></span>
			  <input type="text" class="form-control" id="ho_ten" name="ho_ten"  />
			</div>
			
			<div class="form-group">
			  <label for="optional">Mật khẩu <span class="sao">(*)</span></label>
			  <br /><span class="info_kt" id="mat_khau_error"></span>
			  <input type="password" class="form-control" id="mat_khau" name="mat_khau" />
			</div>
			
			<div class="form-group">
			  <label for="optional">Nhập lại mật khẩu <span class="sao">(*)</span></label>
			  <br /><span class="info_kt" id="mat_khau_lai_error"></span>
			  <input type="password" class="form-control" id="mat_khau_lai" name="mat_khau_lai" />
			</div>
			

			<div class="row"><div class="col-sm-12" style="height: 30px; text-align: center">
			</div></div>
			<hr class="hr">

			<div class="checkbox disabled">

			  <label>
			  	<span class="info_kt"><?=$thongbao?></span><br />
			  	<input type="checkbox" name="termOfService" value="yes"> Tôi đã đọc và hoàn toàn đồng ký với <a href="#">điều khoản</a>  khi tham gia website này.
			  </label>
			</div>
			
			<button type="submit" class="btn btn-primary btn-block">Đăng ký tham gia</button>
		</div>
		<div class="col-sm-4" ></div>
	</div>
	</div>
</form>
</div>

</body>
</html>
<script type="text/javascript" src="../js/js_admin/dangkytaikhoan.js"></script>