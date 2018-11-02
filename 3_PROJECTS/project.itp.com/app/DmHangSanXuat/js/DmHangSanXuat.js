var DmHangSanXuat = function(pAppUrl){
	// Thuộc tính bắt buộc
	this.AppURL = pAppUrl;
	this.CoreData = new CoreDataAjax();
	// Thuộc tính của đối tượng
	this.id_dm_hang_sanxuat = 0;
	this.ten = '';
	this.anh_logo ='';
	this.mota = '';
	this.trangthai = 1;
	
	// Thuộc tính mở rộng
	this.DanhSach = null;
	var that = this;
	
	// Các phương thức
	// Liệt kê tất cả
	this.FindAll = function(){
		var _params = {};
        var _data = {COMMAND:'p_ch_dm_hang_sanxuat_find_all', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcGet', _data);
		if(_rs.CODE=='SUC'){
			that.DanhSach = _rs.DATA;
		}else{
			alert(_rs.MESSAGE);
		}
	}
	
	this.GetById = function(){
		var _params = {
			id_dm_hang_sanxuat: that.id_dm_hang_sanxuat
		};
        var _data = {COMMAND:'p_ch_dm_hang_sanxuat_get_byid', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcGet', _data);
		if(_rs.CODE=='SUC'){
			var _chitiet = _rs.DATA[0];
			that.ten = _chitiet.ten;
			that.anh_logo = _chitiet.anh_logo;
			that.mota = _chitiet.mota;
			that.trangthai = _chitiet.trangthai;
		}else{
			alert(_rs.MESSAGE);
		}
	}
	
	this.Save = function(){
		var _params = {
			id_dm_hang_sanxuat: this.id_dm_hang_sanxuat,
			ten: this.ten,
			anh_logo: this.anh_logo,
			mota: this.mota,
			trangthai: this.trangthai
		};
        var _data = {COMMAND:'p_ch_dm_hang_sanxuat_save', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcSet', _data);
		alert(_rs.MESSAGE);
	}

	this.Del = function(){
		var _params = {
			id_dm_hang_sanxuat: this.id_dm_hang_sanxuat
		};
        var _data = {COMMAND:'p_ch_dm_hang_sanxuat_del', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcSet', _data);
		alert(_rs.MESSAGE);
	}
}