<?php
	require('../modules/module-login.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Đăng nhập tài khoản</title>

    <!-- Bootstrap Core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	
	<link href="../images/favicon.ico" rel="shortcut icon" type="image/x-icon">
	 <!-- jQuery -->
    <script src="../vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../js/sb-admin-2.js"></script>
	<script src="../js/ACCOUNT.js"></script>
	<script src="../data/DULIEUMAU.js"></script>
	<style>
		.login-panel {
			margin-top: 0% !important;
		}
	</style>
	<script>
	/* 	 var Acc = new ACCOUNT();
		var DuLieu = new DULIEU_MAU();
		
		$(function(){
			
			Acc.DS_TAIKHOAN = DuLieu.DS_TAIKHOAN;
			
			$('#btnLogin').on('click',function(){
				Acc.TAI_KHOAN = $('#email').val();
				Acc.MAT_KHAU = $('#password').val();
				Acc.dangnhap();
			});
		}); */
	
	</script> 
</head>

<body>
	<div class="row">
			<div class="col-md-5"></div>
			<div class="col-md-2">
				<img class="logo" src="../images/logo.png" width="100%" height />
			</div>
			<div class="col-md-5"></div>
		</div>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default ">
                    <div class="panel-heading ">
                        <h3 class="panel-title">ĐĂNG NHẬP</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" method="post" action="login.php">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Tài khoản truy cập" name="taikhoan" id="email" type="text" autofocus>
									
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Mật khẩu" name="matkhau" id="password" type="password" value="">
                                </div>
                                <p class="label label-danger"><?=$thongbao?></p>
                                <div class="checkbox">
                                    <label>
                                        <input name="ghinho" type="checkbox" value="Remember Me">Remember Me
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
								<button type="submit"  id="btnLogin" name="login" class="btn btn-lg btn-success btn-block">Đăng Nhập</button>
                                
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

   

</body>

</html>
