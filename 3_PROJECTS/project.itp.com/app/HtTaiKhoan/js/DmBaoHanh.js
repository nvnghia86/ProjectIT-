var HtTaiKhoan = function(pAppUrl){
	// Thuộc tính bắt buộc
	this.AppURL = pAppUrl;
	this.CoreData = new CoreDataAjax();
	// Thuộc tính của đối tượng
	this.id_taikhoan= 0;
	this.taikhoan = '';
	this.matkhau= '';
	this.hoten= '';
	this.sodienthoai= '';
	this.email= '';
	this.id_vaitro = '';
	this.trangthai = 1;
	
	// Thuộc tính mở rộng
	this.DanhSach = null;
	var that = this;
	
	// Các phương thức
	// Liệt kê tất cả
	this.FindAll = function(){
		var _params = {};
        var _data = {COMMAND:'p_ht_TaiKhoan_find_all', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcGet', _data);
		if(_rs.CODE=='SUC'){
			that.DanhSach = _rs.DATA;
		}else{
			alert(_rs.MESSAGE);
		}
	}
	
	this.GetById = function(){
		var _params = {
			id_taikhoan: that.id_taikhoan
		};
        var _data = {COMMAND:'p_ht_taikhoan_get_byid', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcGet', _data);
		if(_rs.CODE=='SUC'){
			var _chitiet = _rs.DATA[0];
			that.taikhoan = _chitiet.taikhoan;
			that.matkhau = _chitiet.matkhau;
			that.hoten = _chitiet.hoten;
			that.sodienthoai = _chitiet.sodienthoai;
			that.email = _chitiet.email;
			that.id_vaitro = _chitiet.id_vaitro;
			that.trangthai = _chitiet.trangthai;
		}else{
			alert(_rs.MESSAGE);
		}
	}
	
	this.Save = function(){
		var _params = {
			id_taikhoan: this.id_taikhoan,
			taikhoan: this.taikhoan,
			matkhau: this.matkhau,
			hoten: this.hoten,
			sodienthoai: this.sodienthoai,
			email : this.email ,
			id_vaitro: this.id_vaitro,
			trangthai: this.trangthai
		};
        var _data = {COMMAND:'p_ht_taikhoan_save', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcSet', _data);
		alert(_rs.MESSAGE);
	}

	this.Del = function(){
		var _params = {
			id_taikhoan: this.id_taikhoan
		};
        var _data = {COMMAND:'p_ht_taikhoan_del', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcSet', _data);
		alert(_rs.MESSAGE);
	}
}