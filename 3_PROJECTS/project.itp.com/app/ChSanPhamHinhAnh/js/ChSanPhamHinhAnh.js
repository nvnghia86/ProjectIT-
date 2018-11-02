var ChSanPhamHinhAnh = function(pAppUrl){
	// Thuộc tính bắt buộc
	this.AppURL = pAppUrl;
	this.CoreData = new CoreDataAjax();
	// Thuộc tính của đối tượng
	this.id_sanpham_hinhanh = 0;
	this.id_sanpham = 0;
	this.id_hinhanh = 0;
	this.loai = '';
	
	// Thuộc tính mở rộng
	this.DanhSach = null;
	var that = this;
	
	// Các phương thức
	// Liệt kê tất cả
	this.FindAll = function(){
		var _params = {};
        var _data = {COMMAND:'p_ch_sanpham_hinhanh_find_all', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcGet', _data);
		if(_rs.CODE=='SUC'){
			that.DanhSach = _rs.DATA;
		}else{
			alert(_rs.MESSAGE);
		}
	}
	
	this.GetById = function(){
		var _params = {
			id_sanpham_hinhanh: that.id_sanpham_hinhanh
		};
        var _data = {COMMAND:'p_ch_sanpham_hinhanh_get_byid', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcGet', _data);
		if(_rs.CODE=='SUC'){
			var _chitiet = _rs.DATA[0];
			that.loai = _chitiet.loai;
		}else{
			alert(_rs.MESSAGE);
		}
	}
	
	this.Save = function(){
		var _params = {
			id_sanpham_hinhanh: this.id_sanpham_hinhanh,
			id_sanpham: this.id_sanpham,
			id_hinhanh: this.id_hinhanh,
			loai: this.loai
		};
        var _data = {COMMAND:'p_ch_sanpham_hinhanh_save', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcSet', _data);
		alert(_rs.MESSAGE);
	}

	this.Del = function(){
		var _params = {
			id_sanpham_hinhanh: this.id_sanpham_hinhanh
		};
        var _data = {COMMAND:'p_ch_sanpham_hinhanh_del', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcSet', _data);
		alert(_rs.MESSAGE);
	}
}