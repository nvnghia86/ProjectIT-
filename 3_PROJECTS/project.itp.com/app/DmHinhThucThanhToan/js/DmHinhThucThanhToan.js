var DmHinhThucThanhToan = function(pAppUrl){
	
	// Thuộc tính bắt buộc
	this.AppURL = pAppUrl;
	this.CoreData = new CoreDataAjax();

	// Thuộc tính mở rộng
	this.DanhSach = null;
	var that = this;

	// Thuộc tính của đối tượng
	this.id_dm_hinhthuc_thanhtoan = 0;
	this.ten ='';
	this.mota = '';
	this.trangthai = 1;

	// Các phương thức
	this.FindAll = function(){
		var _params = {};
		var _data = {COMMAND:'p_ch_dm_hinhthuc_thanhtoan_find_all', PARAMS: _params};
		var _rs = that.CoreData.callDataGet('AjxCallProcGet', _data);

		if(_rs.CODE=='SUC'){
			that.DanhSach = _rs.DATA;
		}else{
			alert(_rs.MESSAGE);
		}
	}
	this.GetById = function(){
		var _params = {
			id_dm_hinhthuc_thanhtoan: that.id_dm_hinhthuc_thanhtoan
		};
        var _data = {COMMAND:'p_ch_dm_hinhthuc_thanhtoan_get_byid', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcGet', _data);
		if(_rs.CODE=='SUC'){
			var _chitiet = _rs.DATA[0];
			that.ten = _chitiet.ten;
			that.mota = _chitiet.mota;
			that.trangthai = _chitiet.trangthai;
		}else{
			alert(_rs.MESSAGE);
		}
	}
	this.Save = function(){
		var _params = {
			id_dm_hinhthuc_thanhtoan: this.id_dm_hinhthuc_thanhtoan,
			ten: this.ten,
			mota: this.mota,
			trangthai: this.trangthai,
		};
		var _data = {COMMAND:'p_ch_dm_hinhthuc_thanhtoan_save', PARAMS: _params};
		var _rs = that.CoreData.callDataGet('AjxCallProcSet', _data);
			alert(_rs.MESSAGE);
	}
	this.Del = function(){
		var _params = {
			id_dm_hinhthuc_thanhtoan: this.id_dm_hinhthuc_thanhtoan
		};
        var _data = {COMMAND:'p_ch_dm_hinhthuc_thanhtoan_del', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcSet', _data);
		alert(_rs.MESSAGE);
	}

	
}
