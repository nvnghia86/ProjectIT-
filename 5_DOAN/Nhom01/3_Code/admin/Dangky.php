<!DOCTYPE html>
<html>
<head>
	<title>Đăng ký tài khoản</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../css/style.css" />
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="../css/style_dangkytaikhoan.css" />
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
</head>
<body>
<div class="header">
	<div class="logo">
		<img src="../images/logokahoot.png" />
	</div>
	<div class="menu">
		<div class="menu-name">
			<em>Already got an account?</em>
		</div>
		<div class="login">
			<a href="../admin/Dangnhap.php"><button class="btn btn-primary">Log in</button></a>
		</div>
	</div>
</div>
<form action="DangKy_act.php" method="post">
<div class="content">
	<div class="container">
		<div class="row">
		<div class="col-sm-4" ></div>
		<div class="col-sm-4" >
			<h3 align="center">ĐĂNG KÝ TÀI KHOẢN</h3>
			<div class="form-group">
			  <label for="optional">Email (*)</label>
			  <input type="text" class="form-control" id="email" name="email">
			</div>
			<div class="form-group">
			  <label for="optional">Họ và tên (*)</label>
			  <input type="text" class="form-control" id="ho_ten" name="ho_ten">
			</div>
			<div class="form-group">
			  <label for="optional">Mật khẩu (*)</label>
			  <input type="text" class="form-control" id="mat_khau" name="mat_khau">
			</div>
			<div class="form-group">
			  <label for="optional">Nhập lại mật khẩu (*)</label>
			  <input type="text" class="form-control" id="mat_khau_lai" name="mat_khau_lai">
			</div>


			<div class="row"><div class="col-sm-12" style="height: 30px;"></div></div>
			<hr class="hr">

			<div class="checkbox disabled">
			  <label><input type="checkbox" value=""> Tôi đã đọc và hoàn toàn đồng ký với <a href="#">điều khoản</a>  khi tham gia website này.</label>
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