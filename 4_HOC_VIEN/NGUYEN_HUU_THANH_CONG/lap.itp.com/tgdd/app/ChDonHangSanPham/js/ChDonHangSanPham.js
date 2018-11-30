var ChDonHangSanPham = function(pAppUrl){
	// Thuộc tính bắt buộc
	this.AppURL = pAppUrl;
	this.CoreData = new CoreDataAjax();
	// Thuộc tính của đối tượng
	this.id_donhang_sanpham = 0;
	this.id_sanpham = '';
	this.id_donhang = '';
	this.soluong = '';
	this.dongia = '';
	
	// Thuộc tính mở rộng
	this.DanhSach = null;
	var that = this;
	
	// Các phương thức
	// Liệt kê tất cả
	this.FindAll = function(){
		var _params = {};
        var _data = {COMMAND:'p_ch_donhang_sanpham_find_all', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcGet', _data);
		if(_rs.CODE=='SUC'){
			that.DanhSach = _rs.DATA;
		}else{
			alert(_rs.MESSAGE);
		}
	}
	
	this.GetById = function(){
		var _params = {
			id_donhang_sanpham: that.id_donhang_sanpham
		};
        var _data = {COMMAND:'p_ch_donhang_sanpham_get_byid', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcGet', _data);
		if(_rs.CODE=='SUC'){
			var _chitiet = _rs.DATA[0];
			that.id_sanpham = _chitiet.id_sanpham;
			that.id_donhang = _chitiet.id_donhang;
			that.soluong = _chitiet.soluong;
			that.dongia = _chitiet.dongia;
			
		}else{
			alert(_rs.MESSAGE);
		}
	}
	
	this.Save = function(){
		var _params = {
			id_donhang_sanpham: this.id_donhang_sanpham,
			id_sanpham: this.id_sanpham,
			id_donhang: this.id_donhang,
			soluong: this.soluong,
			dongia: this.dongia
			
		};
        var _data = {COMMAND:'p_ch_donhang_sanpham_save', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcSet', _data);
		alert(_rs.MESSAGE);
	}

	this.Del = function(){
		var _params = {
			id_donhang_sanpham: this.id_donhang_sanpham
		};
        var _data = {COMMAND:'p_ch_donhang_sanpham_del', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcSet', _data);
		alert(_rs.MESSAGE);
	}
}