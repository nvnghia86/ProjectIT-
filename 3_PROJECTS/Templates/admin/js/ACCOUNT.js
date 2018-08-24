var ACCOUNT = function(){
    this.TAI_KHOAN = '';
    this.MAT_KHAU = '';
    this.VAI_TRO  = '';
    this.EMAIL = '';
	this.AVATAR ='';
	
	this.dangnhap = function(){
		
		if(this.TAI_KHOAN=='admin' && this.MAT_KHAU=='123'){
			alert('Đăng nhập thành công!');
			window.location.href = 'danhmuc_sanpham.html';
		}else{
			alert('Tài khoản hoặc mật khẩu không hợp lệ!');
		}
	}
};