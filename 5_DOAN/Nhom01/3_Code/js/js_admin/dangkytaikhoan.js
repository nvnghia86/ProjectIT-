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