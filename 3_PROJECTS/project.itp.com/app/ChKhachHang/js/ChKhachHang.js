var ChKhachHang = function (pAppUrl) {
    // Thuộc tính bắt buộc
    this.AppURL = pAppUrl;
    this.CoreData = new CoreDataAjax();
    // Thuộc tính của đối tượng
    this.id_khachhang = 0;
    this.hoten = '';
    this.email = '';
    this.matkhau = '';
    this.sodienthoai = '';
    this.trangthai = 1;

    // Thuộc tính mở rộng
    this.DanhSach = null;
    var that = this;

    // Các phương thức
    // Liệt kê tất cả
    this.FindAll = function () {
        var _params = {};
        var _data = {COMMAND: 'p_ch_khachhang_find_all', PARAMS: _params};
        var _rs = that.CoreData.callDataGet('AjxCallProcGet', _data); /* Get là lấy ra*/
        if (_rs.CODE == 'SUC') {
            that.DanhSach = _rs.DATA;
        } else {
            alert(_rs.MESSAGE);
        }
    };

    this.GetById = function () {
        var _params = {
            id_khachhang: that.id_khachhang
        };
        console.log(_params);
        var _data = {COMMAND: 'p_ch_khachhang_get_byid', PARAMS: _params};
        var _rs = that.CoreData.callDataGet('AjxCallProcGet', _data);
        if (_rs.CODE == 'SUC') {
            var _chitiet        = _rs.DATA[0];
            that.hoten          = _chitiet.hoten;
            that.email          = _chitiet.email;
            that.matkhau        = _chitiet.matkhau;
            that.sodienthoai    = _chitiet.sodienthoai;
            that.trangthai      = _chitiet.trangthai;
        } else {
            alert(_rs.MESSAGE);
        }
    };

    this.Save = function () {
        var _params = {
            id_khachhang: this.id_khachhang,
            hoten: this.hoten,
            email: this.email,
            matkhau: this.matkhau,
            sodienthoai: this.sodienthoai,
            trangthai: this.trangthai
        };
        var _data = {COMMAND: 'p_ch_khachhang_save', PARAMS: _params};
        var _rs = that.CoreData.callDataGet('AjxCallProcSet', _data); /* Set là thêm vào*/
        alert(_rs.MESSAGE);
    };

    this.Del = function () {
        var _params = {
            id_khachhang: this.id_khachhang
        };

        var _data = {COMMAND: 'p_ch_khachhang_del', PARAMS: _params};
        console.log(_data);
        var _rs = that.CoreData.callDataGet('AjxCallProcSet', _data);
        alert(_rs.MESSAGE);
    };
};