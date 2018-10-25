var HT_VAI_TRO = function (pUrl) {
    // Properties
    this.ID_VAI_TRO = '';
    this.MA = '';
    this.TEN = '';
    this.MO_TA = '';
    this.TRANG_THAI = '';

    // Others
    this.URL = pUrl;
    this.LOG = false;
    this.ChiTiet = null;
    this.DanhSach = [];
    var that = this;
    
    this.find_01 = function () {
        var AJX = new  CORE_AJAX(that.URL);
        AJX.LOG = that.LOG;
        var _rs = AJX.call('find_01');
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
    
    this.save = function(){
        var AJX = new  CORE_AJAX(that.URL);
        AJX.LOG = that.LOG;
        var _data = {
            ID_VAI_TRO: that.ID_VAI_TRO,
            MA: that.MA,
            TEN: that.TEN,
            MO_TA: that.MO_TA,
            TRANG_THAI: that.TRANG_THAI
        };

        var _rs = AJX.call('save',_data);
        return _rs;
        
        
    };
    
    this.delete = function(){
        var AJX = new  CORE_AJAX(that.URL);
        AJX.LOG = that.LOG;
        var _data = {
            ID_VAI_TRO: that.ID_VAI_TRO
        };
        var _rs = AJX.call('delete',_data);
        return _rs;
    };

    this.log = function (pTitle,pMsg) {
        if (this.LOG) {
            console.log(pTitle + '>>', pMsg);
        }
    };

}