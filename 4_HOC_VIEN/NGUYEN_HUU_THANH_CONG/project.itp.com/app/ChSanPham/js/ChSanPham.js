var DmBaoHanh = function(pAppUrl){
	// Thuộc tính bắt buộc
	this.AppURL = pAppUrl;
	this.CoreData = new CoreDataAjax();
	// Thuộc tính của đối tượng
	this.id_ch_sanpham = 0;
	this.ma = '';
	this.ten = '';
	this.gia_nhap = '15,2';
	this.gia_ban = '15,2';
	this.gioithieu = '';
	this.id_dm_sanpham = 0;
	this.id_dm_baohanh = 0;
	this.id_dm_doitra = 0;
	this.id_dm_giao_hang = 0;
	this.id_dm_doi_tra = 0;
	this.id_dm_hang_sansuat = 0;
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
	
	this.GetById = function(){}
	
	this.Save = function(){
		var _params = {
			id_ch_sanpham: this.id_ch_sanpham,
			ma: this.ma,
			ten: this.ten,
			gia_nhap: this.gia_nhap,
			gia_ban: this.gia_ban,
			gioithieu: this.gioithieu,
			id_dm_sanpham:	this.id_dm_sanpham,
			id_dm_baohanh:	this.id_dm_baohanh,
			id_dm_doitra:	this.id_dm_doitra,
			id_dm_giao_hang:	this.id_dm_giao_hang,
			id_dm_doi_tra:	this.id_dm_doi_tra,
			id_dm_hang_sansuat:	this.id_dm_hang_sansuat,
			trangthai: this.trangthai
		};
        var _data = {COMMAND:'p_ch_sanpham_save', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcSet', _data);
		alert(_rs.MESSAGE);
	}

	this.Del = function(){
		var _params = {
			id_ch_sanpham: this.id_ch_sanpham
		};
        var _data = {COMMAND:'p_ch_sanpham_del', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcSet', _data);
		alert(_rs.MESSAGE);
	}
}