<!DOCTYPE html>
<html>
<head>
	<title>Đăng ký tài khoản</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="../css/style_dangkytaikhoan.css" />
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
	
</head>
<body>
<div class="header">
	<div class="logo">
		<img src="../images/logokahoot.png" />
	</div>
	<div class="menu">
		<div class="menu-name">
			<em>Đã có tài khoản?</em>
		</div>
		<div class="login">
			<a href="../admin/Dangnhap.php"><button class="btn btn-primary">Đăng Nhập</button></a>
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
			  <input type="text" class="form-control" id="email" name="email">
			</div>
			
			<div class="form-group">
			  <label for="optional">Họ và tên <span class="sao">(*)</span></label>
			  <br /><span class="info_kt" id="ho_ten_error"></span>
			  <input type="text" class="form-control" id="ho_ten" name="ho_ten">
			</div>
			
			<div class="form-group">
			  <label for="optional">Mật khẩu <span class="sao">(*)</span></label>
			  <br /><span class="info_kt" id="mat_khau_error"></span>
			  <input type="password" class="form-control" id="mat_khau" name="mat_khau">
			</div>
			
			<div class="form-group">
			  <label for="optional">Nhập lại mật khẩu <span class="sao">(*)</span></label>
			  <br /><span class="info_kt" id="mat_khau_lai_error"></span>
			  <input type="password" class="form-control" id="mat_khau_lai" name="mat_khau_lai">
			</div>
			

			<div class="row"><div class="col-sm-12" style="height: 30px; text-align: center">
			</div></div>
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
	        var ho_ten    = $.trim($('#ho_ten').val());
	        var mat_khau = $.trim($('#mat_khau').val());
	        var mat_khau_lai       = $.trim($('#mat_khau_lai').val());
	 
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

	        //họ tên

	        if (ho_ten == '' || ho_ten.length < 4){
	            $('#ho_ten_error').text('Tên đăng nhập phải lớn hơn 4 ký tự');
	            flag = false;
	        }
	        else{
	            $('#ho_ten_error').text('');
	        }
	 
	        // Password
	        if (mat_khau.length <= 0){
	            $('#mat_khau_error').text('Bạn phải nhập mật khẩu');
	            flag = false;
	        }
	        else{
	            $('#password_error').text('');
	        }
	 
	        // Re password
	        if (mat_khau != mat_khau_lai){
	            $('#mat_khau_lai_error').text('Mật khẩu nhập lại không đúng');
	            flag = false;
	        }
	        else{
	            $('#mat_khau_lai_error').text('');
	        }
	 
	        return flag;
	    });
                     
  	});
</script>