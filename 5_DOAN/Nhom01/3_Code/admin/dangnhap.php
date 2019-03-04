<!DOCTYPE html>
<html>
<head>
	<title>Đăng nhập tài khoản</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="../css/css_admin/dangnhap.css" />
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
</head>
<body>
<div class="header">
	<div class="container">
		<div class="logo">
		<img src="../images/logokahoot.png" />
	</div>
	<div class="menu">
		<div class="login">
			<a href="../admin/dangky.php">
				<button class="btn btn-primary">ĐĂNG KÝ</button>
			</a>
		</div>

		<div class="menu-name">
			<em>Chưa có tài khoản?</em>
		</div>
	</div>
	</div>
</div>
<form action="dangnhap_act.php" method="post" id="form_register">
<div class="content">
	<div class="container">
		<div class="row">
		<div class="col-sm-4" ></div>
		<div class="col-sm-4" >
		<h3 style="text-align: center; color: #33b5e5; font-weight: bold; font-size: 30px">ĐĂNG NHẬP</h3>
			<!-- Form Module-->
			<div class="module form-module">
			  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
			    <div class="tooltip">Click Me</div>
			  </div>
			  <div class="form">
			    <h2>Đăng nhập tài khoản của bạn</h2>
			    	<span class="info_kt" id="email_error"></span>
				    <input type="text" id="email" name="email" placeholder="Email"/>

				    <span class="info_kt" id="mat_khau_error"></span>
				    <input type="password" id="mat_khau" name="mat_khau" placeholder="Mật khẩu"/>
				    <button  type="submit">Đăng Nhập</button>
			  </div>
			  <div class="cta"><a href="#">Quên mật khẩu?</a></div>
			</div>
		</div>
		<div class="col-sm-4" ></div>
	</div>
	</div>
</form>
</div>

</body>
</html>
<script type="text/javascript" src="../js/js_admin/login.js"></script>