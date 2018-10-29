var DmBaoHanh = function(pAppUrl){
	// Thuộc tính bắt buộc
	this.AppURL = pAppUrl;
	this.CoreData = new CoreDataAjax();
	// Thuộc tính của đối tượng
	this.id_sanpham = 0;
	this.ma = '';
	this.ten = '';
	this.gia_nhap = '';
	this.gia_ban = '';
	this.gioithieu = '';
	this.trangthai = 1;
	
	// Thuộc tính mở rộng
	this.DanhSach = null;
	var that = this;
	
	// Các phương thức
	// Liệt kê tất cả
	this.FindAll = function(){
		var _params = {};
        var _data = {COMMAND:'p_ch_sanpham_find_all', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcGet', _data);
		if(_rs.CODE=='SUC'){
			that.DanhSach = _rs.DATA;
		}else{
			alert(_rs.MESSAGE);
		}
	}
	
	this.GetById = function(){
		var _params = {
			id_sanpham: that.id_sanpham
		};
        var _data = {COMMAND:'p_ch_sanpham_get_byid', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcGet', _data);
		if(_rs.CODE=='SUC'){
			var _chitiet = _rs.DATA[0];
			that.ma = _chitiet.ma;
			that.ten = _chitiet.ten;
			that.gia_nhap = _chitiet.gia_nhap;
			that.gia_ban = _chitiet.gia_ban;
			that.gioithieu = _chitiet.gioithieu;
			that.trangthai = _chitiet.trangthai;
		}else{
			alert(_rs.MESSAGE);
		}
	}
	
	this.Save = function(){
		var _params = {
			id_sanpham: this.id_sanpham,
			ma: this.ma,
			ten: this.ten,
			gia_nhap: this.gia_nhap,
			gia_ban: this.giaban,
			gioithieu: this.gioithieu,
			trangthai: this.trangthai
		};
        var _data = {COMMAND:'p_ch_s_save', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcSet', _data);
		alert(_rs.MESSAGE);
	}

	this.Del = function(){
		var _params = {
			id_sanpham: this.id_sanpham
		};
        var _data = {COMMAND:'p_ch_sanpham_del', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcSet', _data);
		alert(_rs.MESSAGE);
	}
}