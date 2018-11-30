var ChDonHang= function(pAppUrl){
	// Thuộc tính bắt buộc
	this.AppURL = pAppUrl;
	this.CoreData = new CoreDataAjax();
	// Thuộc tính của đối tượng
	this.id_donhang = 0;
	this.ngay_tao = '';
	this.ngay_duyet = '';
	this.ngay_giao = '';
	this.ngay_nhan = '';
	this.ten_nguoinhan= '';
	this.sdt_nguoinhan= '';
	this.diachi_nguoinhan='';
		this.trangthai = 1;
	
	// Thuộc tính mở rộng
	this.DanhSach = null;
	var that = this;
	
	// Các phương thức
	// Liệt kê tất cả
	this.FindAll = function(){
		var _params = {};
        var _data = {COMMAND:'p_ch_donhang_find_all', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcGet', _data);
		if(_rs.CODE=='SUC'){
			that.DanhSach = _rs.DATA;
		}else{
			alert(_rs.MESSAGE);
		}
	}
	
	this.GetById = function(){}
	
	this.Save = function(){}

	this.Del = function(){}
}