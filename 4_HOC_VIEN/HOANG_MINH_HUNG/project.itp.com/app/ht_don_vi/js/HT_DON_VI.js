var HT_DON_VI = function (pUrl) {
    // Properties
    this.ID_DON_VI = '';
    this.MA = '';
    this.TEN_DON_VI = '';
    this.ID_DON_VI_CHA = '';
    this.MO_TA = '';
    this.TRANG_THAI = '';

    // Others
    this.URL = pUrl;
    this.LOG = false;
    this.ChiTiet = null;
    this.DanhSach = [];
    var that = this;
    
    this.find_01 = function (pTuKhoa) {
        var AJX = new  CORE_AJAX(that.URL);
        AJX.LOG = that.LOG;
        var _rs = AJX.call('find_01',pTuKhoa);
        if(_rs.CODE=='SUC'){
            that.DanhSach = _rs.DATA;
        }else{
            alert('Lỗi: ' + _rs.MESSAGE);
        }
    };

    this.log = function (pTitle,pMsg) {
        if (this.LOG) {
            console.log(pTitle + '>>', pMsg);
        }
    };

}