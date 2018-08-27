var ACCOUNT = function(){
	this.DS_TAIKHOAN = [];
	this.TAI_KHOAN = '';
	this.MAT_KHAU = '';
	this.VAI_TRO  = '';
	this.EMAIL = '';
	this.AVATAR ='';
	
	this.dangnhap = function(){
		localStorage.setItem('Acc',null);
		var hople = false;
		for(var i = 0; i < this.DS_TAIKHOAN.length; i++){
			var tk = this.DS_TAIKHOAN[i];
			if(this.TAI_KHOAN == tk.TAI_KHOAN && this.MAT_KHAU == tk.MAT_KHAU)
			{
				hople = true;
				this.VAI_TRO = tk.VAI_TRO;
				localStorege.setTime('Acc',JS )
			}
		}
		if(hople)
		{
			alert('Đăng nhập thành công! Xin chào '+ this.VAI_TRO);
			document.location.href = 'quantri_dssp.html';
		}
		else
		{
			alert('Tài khoản hoặc mật khẩu không hợp lệ!');
		}
	}
};