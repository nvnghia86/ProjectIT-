var ChSanPhamThuocTinh = function(pApUrl)
{
	this.AppURL = pApUrl;
	this.CoreData = new CoreDataAjax();
	this.id_sanpham_thuoctinh=0;
	this.id_sanpham = '';
	this.id_dm_thuoctinh = '';
	this.giatri = '';
	this.trangthai = 1;

	this.DanhSach = null;
	var that = this;

	this.FindAll = function(){
		var _params = {};
        var _data = {COMMAND:'p_ch_sanpham_thuoctinh_find_all', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcGet', _data);
		if(_rs.CODE=='SUC'){
			that.DanhSach = _rs.DATA;
		}else{
			alert(_rs.MESSAGE);
		}
	}
	this.GetByID = function(){
		var _params ={id_sanpham_thuoctinh:that.id_sanpham_thuoctinh};
		var _data ={COMMAND:'p_ch_sanpham_thuoctinh_get_byid',PARAMS:_params};
		var _rs = that.CoreData.callDataGet('AjxCallProcGet',_data);
		if (_rs.CODE=='SUC') {
			var _chitiet =_rs.DATA[0];
			that.giatri = _chitiet.giatri;
			that.trangthai = _chitiet.trangthai;
		}else{
			alert(_rs.MESSAGE);
		}
	}
	this.Save = function(){
		var _params ={
			id_sanpham_thuoctinh: that.id_sanpham_thuoctinh,
			giatri: that.giatri,
			trangthai: that.trangthai
		};
		var _data = {COMMAND:'p_ch_sanpham_thuoctinh_save',PARAMS:_params};

		var _rs = that.CoreData.callDataGet('AjxCallProcSet',_params);
		
		alert(_rs.MESSAGE);
	}
	this.Del = function(){
		var _params ={ id_sanpham_thuoctinh: that.id_sanpham_thuoctinh};

		var _data = {COMMAND:'p_ch_sanpham_thuoctinh_del',PARAMS:_params};

		var _rs = that.CoreData.callDataGet('AjxCallProcSet',_data);

		alert(_rs.MESSAGE);
	}
}