var ChSanPham = function(pAppUrl){
	// Thuộc tính bắt buộc
	this.AppURL = pAppUrl;
	this.CoreData = new CoreDataAjax();
	// Thuộc tính của đối tượng
	this.id_sanpham = 0;
	this.ma = '';
	this.ten = '';
	this.gia_nhap = '15,2';
	this.gia_ban = '15,2';
	this.gioithieu = '';
	this.id_dm_sanpham = 0;
	this.id_dm_baohanh = 0;
	this.id_dm_doitra = 0;
	this.id_dm_giaohang = 0;
	this.id_dm_tragop = 0;
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
			that.id_dm_sanpham = _chitiet.id_dm_sanpham;
			that.id_dm_baohanh = _chitiet.id_dm_baohanh;
			that.id_dm_doitra = _chitiet.id_dm_doitra;
			that.id_dm_giaohang = _chitiet.id_dm_giaohang;
			that.id_dm_tragop = _chitiet.id_dm_tragop;
			that.id_dm_hang_sanxuat = _chitiet.id_dm_hang_sanxuat;
			that.trangthai = _chitiet.trangthai;
		}else{
			alert(_rs.MESSAGE);
		}
	}
	
	this.Save = function(){
		var _params = {
			id_sanpham: that.id_sanpham,
			ma: that.ma,
			ten: that.ten,
			gia_nhap: that.gia_nhap,
			gia_ban: that.gia_ban,
			gioithieu: that.gioithieu,
			id_dm_sanpham: that.id_dm_sanpham,
			id_dm_baohanh: that.id_dm_baohanh,
			id_dm_doitra: that.id_dm_doitra,
			id_dm_giaohang: that.id_dm_giaohang,
			id_dm_tragop: that.id_dm_tragop,
			id_dm_hang_sanxuat: that.id_dm_hang_sanxuat,
			trangthai: that.trangthai
		};
        var _data = {COMMAND:'p_ch_sanpham_save', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcSet', _data);
		alert(_rs.MESSAGE);
	}

	this.Del = function(){
		var _params = {
			id_sanpham: that.id_sanpham
		};
		console.log(_params);
        var _data = {COMMAND:'p_ch_sanpham_del', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcSet', _data);
		alert(_rs.MESSAGE);
	}
	
}