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
	this.id_dm_doittra = 0;
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
	
	this.Save = function(){}

	this.Del = function(){}
}