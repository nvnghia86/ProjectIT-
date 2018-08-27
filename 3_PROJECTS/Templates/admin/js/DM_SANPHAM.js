var DM_SANPHAM = function(){
	
	this.MA ='';
	this.TEN = '';
	this.MO_TA = '';
	this.TRANG_THAI = '';
	this.DANH_SACH = [];
	
	this.load_DuLieu = function(data){
		this.DANH_SACH = data;
	};
	
	this.kiemtra_Them = function(){
		if(this.MA.length<3 || this.MA.length > 10){
			alert('Mã nhập vào không hợp lệ. (Mã phải chứa từ 3-10 ký tự)');
			return false;
		}
		
		if(this.TEN.length<3 || this.TEN.length > 100){
			alert('Tên nhập vào không hợp lệ. (Tên phải chứa từ 3-100 ký tự)');
			return false;
		}
		return true;
	};
	
	this.them = function(){
		if(this.kiemtra_Them()== true){
			var dm = {MA:this.MA,TEN: this.TEN,MO_TA: this.MO_TA,TRANG_THAI:this.TRANG_THAI};
			this.DANH_SACH.push(dm);
			alert('Thêm thành công!');
			return true;
		}else{
			alert('Thêm thất bại!');
			return false;
		}
	}
	
}