<?php

	require('../modules/mod_login.php');

?>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Đăng nhập hệ thống</title>
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
    <link href="../css/sb-admin-2.css" rel="stylesheet">
    <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="../images/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="../vendor/metisMenu/metisMenu.min.js"></script>
    <script src="../js/sb-admin-2.js"></script>
    <script src="../js/ACCOUNT.js"></script>
	<script src="../data/DULIEU_MAU.js"></script>
	<style>
		.login-panel {
			margin-top: 0% !important;
		}
	</style>
	<script>

	</script>
	
</head>

<body>
<form method="post" action="login.php" >
    <div class="container">
		<div class="row">
			<div class="col-md-5"></div>
			<div class="col-md-2">
				<img class="logo" src="../images/logo.png" width="100%" height />
			</div>
			<div class="col-md-5"></div>
		</div>
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">ĐĂNG NHẬP QUẢN TRỊ</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Tài khoản truy cập" name="taikhoan" type="text" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Mật khẩu" name="matkhau" type="password" value="">
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="ghinho" type="checkbox" value="1"> Lưu đăng nhập
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
								<button type="submit" name="submit" name="btnLogin" class="btn btn-lg btn-success btn-block"> Đăng nhập</button>
								<p class="label label-danger"><?=$thongbao?></p>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
</body>

</html>
