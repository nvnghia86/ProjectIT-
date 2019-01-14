<?php
	$thongbao = isset($_GET['thongbao'])?$_GET['thongbao']:'';
?>
<!DOCTYPE html>
<html>
<head>
	<title>Đăng nhập tài khoản</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../css/style.css" />
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="../css/dangnhap.css" />
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
</head>
<body>
<div class="header">
	<div class="container">
		<div class="logo">
		<img src="../images/logokahoot.png" />
	</div>
	<div class="menu">
		<div class="menu-name">
			<em>Not got an account?</em>
		</div>
		<div class="login">
			<a href="../admin/Dangky.php">
				<button class="btn btn-primary">SIGN UP</button>
			</a>
		</div>
	</div>
	</div>
</div>
<form action="dangnhap_act.php" method="post">
<div class="content">
	<div class="container">
		<div class="row">
		<div class="col-sm-4" ></div>
		<div class="col-sm-4" >
			<h3 style="text-align: center; color: blue; font-weight: bold; font-size: 30px">ĐĂNG NHẬP</h3>
			<div class="row">
				<div class="col-sm-5"><hr class="hr"></div>
				<div class="col-sm-2">-</div>
				<div class="col-sm-5"><hr class="hr"></div>
			</div> 

			<div class="form-group">
			  <input type="text" class="form-control" id="email" name="email" placeholder="Email">
			</div>

			<div class="form-group">
			  <input type="password" class="form-control" id="mat_khau" name="mat_khau" placeholder="Mật khẩu">
			</div>
				<p style="font-style:italic;color: red;font-weight: bold"><?=$thongbao?></p>
				<button type="submit" class="btn btn-red btn-block" style="background: #7944AC; color: #fff">Đăng nhập</button>
			
			<div class="row">
				<div class="col-sm-12" style=" text-align: center; ">
					<em><a href="#" style=" color: #333">Lost your password?</a></em>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-12" style=" text-align: center;">
					<em><a href="#" style=" color: #333">If you are stuck, please let us know.</a></em>
				</div>
			</div>
		</div>
		<div class="col-sm-4" ></div>
	</div>
	</div>
</form>
</div>

</body>
</html>