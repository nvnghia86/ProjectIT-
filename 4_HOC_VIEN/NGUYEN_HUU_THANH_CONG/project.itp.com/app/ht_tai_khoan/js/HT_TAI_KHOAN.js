var HT_TAI_KHOAN = function (pUrl) {
    this.ID_TAI_KHOAN = '';
    this.TAI_KHOAN = '';
    this.MAT_KHAU = '';
    this.HO_TEN = '';
    this.EMAIL = '';
    this.ID_VAI_TRO = '';
    this.TRANG_THAI = '';
    this.ID_DON_VI = '';
    this.SO_DIEN_THOAI = '';
    this.VAI_TRO_TEN = '';
    this.DON_VI_TEN = '';
    
    // Others
    this.URL = pUrl;
    this.LOG = false;
    this.ChiTiet = null;
    this.DanhSach = [];
    var that = this;
    
    this.taikhoan_lietke = function () {
        var AJX = new  CORE_AJAX(that.URL);
        var _data = {p_TU_KHOA:''};
        AJX.LOG = that.LOG;
        var _rs = AJX.call('taikhoan_lietke',_data);
        if(_rs.CODE=='SUC'){
            that.DanhSach = _rs.DATA;
        }else{
            alert('Lỗi: ' + _rs.MESSAGE);
        }
    };
    
    this.get = function(pId){
        for (var i = 0; i < that.DanhSach.length; i++) {
            var _item = that.DanhSach[i];
            if (_item['ID_VAI_TRO'] == pId) {
                that.ChiTiet = _item;
                return;
            }
        }
    };
    
    this.taikhoan_luu = function(){
        var AJX = new  CORE_AJAX(that.URL);
        AJX.LOG = that.LOG;
        var _data = {
            ID_TAI_KHOAN: that.ID_TAI_KHOAN,
            TAI_KHOAN: that.TAI_KHOAN,
            MAT_KHAU: that.MAT_KHAU,
            HO_TEN: that.HO_TEN,
            EMAIL: that.EMAIL,
            ID_VAI_TRO: that.ID_VAI_TRO,
            TRANG_THAI: that.TRANG_THAI,
            ID_DON_VI: that.ID_DON_VI,
            SO_DIEN_THOAI: that.SO_DIEN_THOAI
        };
        var _rs = AJX.call('taikhoan_luu',_data);
        return _rs;  
    };
    
    this.log = function (pTitle,pMsg) {
        if (this.LOG) {
            console.log(pTitle + '>>', pMsg);
        }
    };

}