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
	this.lay = function(){
		 for(var i=0; i<this.DANH_SACH.length; i++){
			 var item = this.DANH_SACH[i];
			 if(this.MA = item.MA){
				 this.TEN = item.TEN;
				 this.MO_TA = item.MO_TA;
				 this.TRANG_THAI = item.TRANG_THAI;
				 return;
			 }
		 }
	}
	this.sua = function(){
		if(this.kiemtra_Them()== true){
			for(var i=0; i<this.DANH_SACH.length;i++){
				var item = this.DANH_SACH[i];
				if(this.MA == item.MA){
					item.TEN = this.TEN;
					item.MO_TA = this.MO_TA;
					item.TRANG_THAI = this.TRANG_THAI;
					this.DANH_SACH[i] = item;
				}
			}
			alert('Sửa thành công!');
			return true;
		}else{
			alert('Sửa thất bại!');
			return false;
	  }
	}
			 
	
	
	
}