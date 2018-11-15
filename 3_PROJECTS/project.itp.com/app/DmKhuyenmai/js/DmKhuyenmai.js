var DmKhuyenmai = function(pAppUrl){
	// Thuộc tính bắt buộc
	this.AppURL = pAppUrl;
	this.CoreData = new CoreDataAjax();
	// Thuộc tính của đối tượng
	this.id_dm_khuyenmai = 0;
	this.ma = '';
	this.ten = '';
	this.noidung = '';
	this.trangthai = 1;
	
	// Thuộc tính mở rộng
	this.DanhSach = null;
	var that = this;
	
	// Các phương thức
	// Liệt kê tất cả
	this.FindAll = function(){
		var _params = {};
        var _data = {COMMAND:'p_ch_dm_khuyenmai_find_all', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcGet', _data);
		if(_rs.CODE=='SUC'){
			that.DanhSach = _rs.DATA;
		}else{
			alert(_rs.MESSAGE);
		}
	}
	
	this.GetById = function(){
		var _params = {
			id_dm_khuyenmai: that.id_dm_khuyenmai
		};
        var _data = {COMMAND:'p_ch_dm_khuyenmai_get_byid', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcGet', _data);
		if(_rs.CODE=='SUC'){
			var _chitiet = _rs.DATA[0];
			that.ma= _chitiet.ma;
			that.ten = _chitiet.ten;
			that.noidung = _chitiet.noidung;
			that.trangthai = _chitiet.trangthai;
		}else{
			alert(_rs.MESSAGE);
		}
	}
	
	this.Save = function(){
		var _params = {
			id_dm_khuyenmai: that.id_dm_khuyenmai,
			ma: that.ma,
			ten: that.ten,
			noidung: that.noidung,
			trangthai: that.trangthai
		};
        var _data = {COMMAND:'p_ch_dm_khuyenmai_save', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcSet', _data);
		alert(_rs.MESSAGE);
	}
	
	this.Del = function(){
		var _params = {
			id_dm_khuyenmai: that.id_dm_khuyenmai
		};
        var _data = {COMMAND:'p_ch_dm_khuyenmai_del', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcSet', _data);
		alert(_rs.MESSAGE);
	}
}	