<!DOCTYPE html>
<html>
<head>
	<title>Đăng nhập tài khoản</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="../css/dangnhap.css" />
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
		<div class="menu-name">
			<em>Chưa có tài khoản?</em>
		</div>
		<div class="login">
			<a href="../admin/Dangky.php">
				<button class="btn btn-primary">ĐĂNG KÝ</button>
			</a>
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
<script type="text/javascript">
	function isEmail(emailStr){
        var emailPat=/^(.+)@(.+)$/
        var specialChars="\\(\\)<>@,;:\\\\\\\"\\.\\[\\]"
        var validChars="\[^\\s" + specialChars + "\]"
        var quotedUser="(\"[^\"]*\")"
        var ipDomainPat=/^\[(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})\]$/
        var atom=validChars + '+'
        var word="(" + atom + "|" + quotedUser + ")"
        var userPat=new RegExp("^" + word + "(\\." + word + ")*$")
        var domainPat=new RegExp("^" + atom + "(\\." + atom +")*$")
        var matchArray=emailStr.match(emailPat)
        if (matchArray==null) {
                return false
        }
        var user=matchArray[1]
        var domain=matchArray[2]
 
        // See if "user" is valid
        if (user.match(userPat)==null) {
            return false
        }
        var IPArray=domain.match(ipDomainPat)
        if (IPArray!=null) {
            // this is an IP address
                  for (var i=1;i<=4;i++) {
                    if (IPArray[i]>255) {
                        return false
                    }
            }
            return true
        }
        var domainArray=domain.match(domainPat)
        if (domainArray==null) {
            return false
        }
 
        var atomPat=new RegExp(atom,"g")
        var domArr=domain.match(atomPat)
        var len=domArr.length
 
        if (domArr[domArr.length-1].length<2 ||
            domArr[domArr.length-1].length>3) {
           return false
        }
 
        if (len<2)
        {
           return false
        }
 
        return true;
	}

	$(document).ready(function(){
        $('#form_register').submit(function(){

	        // BƯỚC 1: Lấy dữ liệu từ form
	        var email    = $.trim($('#email').val());
	        var mat_khau = $.trim($('#mat_khau').val());
	 
	        // BƯỚC 2: Validate dữ liệu
	        // Biến cờ hiệu
	        var flag = true;
	 
	        // Email
	        if (!isEmail(email)){
	            $('#email_error').text('Email không được để trống và phải đúng định dạng');
	            flag = false;
	        }
	        else{
	            $('#email_error').text('');
	        }

	        // Password
	        if (mat_khau.length <= 0){
	            $('#mat_khau_error').text('Bạn phải nhập mật khẩu');
	            flag = false;
	        }
	        else{
	            $('#password_error').text('');
	        }

	        return flag;
	    });
                     
  	});
</script>