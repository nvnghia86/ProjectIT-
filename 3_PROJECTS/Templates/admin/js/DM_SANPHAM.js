var DM_SANPHAM = function(){
	
	this.MA ='';
	this.TEN = '';
	this.MO_TA = '';
	this.TRANG_THAI = '';
	this.DANH_SACH = [];
	
	this.load_DuLieu = function(data){
		this.DANH_SACH = data;
	}
	
	this.them = function(){
		var dm = {MA:this.MA,TEN: this.TEN,MO_TA: this.MO_TA,TRANG_THAI:this.TRANG_THAI};
		this.DANH_SACH.push(dm);
	}
	
}