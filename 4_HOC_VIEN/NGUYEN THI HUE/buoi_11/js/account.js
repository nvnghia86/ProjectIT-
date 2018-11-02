var account=function()
{
	this.TAI_KHOAN='';
	this.MAT_KHAU='';
	this.VAI_TRO='';
	this.EMAIL='';
	this.AVATAR='';
	this.dangnhap=function()
	{
		if(this.TAI_KHOAN=='admin' && this.MAT_KHAU=='123')
		{
			alert('đăng nhập thành công');
			document.location.href='danhmuc_sanpham.html';
		}
		else{
			alert('đăng nhập không thành công');
		}
	}
};