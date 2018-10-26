var HtChucNang = function (pUrl) {
    this.id_ht_chucnang = '';
    this.id_ht_chucnang_cha = '';
    this.tieude = '';
    this.ma = '';
    this.url = '';
    this.loai = "'1','0'";
    this.trangthai = '';
    this.css = '';
    this.css_class = '';
    this.thutu = '';

    
    this.TreeData = null;

    // Others
    this.URL = pUrl;
    this.LOG = false;
    this.ChiTiet = null;
    this.DanhSach = [];
    
    this.CoreData = new CoreDataAjax();
    var that = this;

    this.getTreeFilterLoai = function () {
        var _params = {
            loai: this.loai
        };
        var _data = {COMMAND:'p_ht_chucnang_filter_loai', PARAMS:_params, ID:'id_ht_chucnang',ID_PARENT:'id_ht_chucnang_cha'};
        that.TreeData = that.CoreData.callDataGet('CallProcGetTreeData', _data);
    };
    
    this.save = function () {
        var _params = {
            id_ht_chucnang: this.id_ht_chucnang,
            id_ht_chucnang_cha: this.id_ht_chucnang_cha,
            tieude: this.tieude,
            ma: this.ma,
            url: this.url,
            loai: this.loai,
            trangthai: this.trangthai,
            css: this.css,
            css_class: this.css_class,
            thutu: this.thutu
        };
        var _data = {COMMAND:'p_dm_diaban_save', PARAMS:_params};
        //var _rs = that.CoreData.callDataGet('CallProcGetTreeData', _params);
        var _rs = that.CoreData.callDataGet('AjxCallProcSet', _data);
        console.log(_rs);
        if(_rs.CODE !='SUC'){
            alert(_rs.MESSAGE);
            return false;
        }
        return _rs;
    };
    
    this.del = function () {
        var _params = {
            ID_DM_DIA_BAN: this.ID_DM_DIA_BAN
        };
        var _data = {COMMAND:'p_dm_diaban_del', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcSet', _data);
        if(_rs.CODE !='SUC'){
            alert(_rs.MESSAGE);
            return false;
        }
        return _rs;
    };
    
    this.getById = function () {
        var _params = {
            ID_DM_DIA_BAN: this.ID_DM_DIA_BAN
        };
        var _data = {COMMAND:'p_dm_diaban_get_byid', PARAMS:_params};
        var _rs = that.CoreData.callDataGet('AjxCallProcGet', _data);
        console.log(_rs);
        if(_rs.CODE !='SUC'){
            alert(_rs.MESSAGE);
            return false;
        }
        that.ChiTiet = _rs.DATA[0];
    };

    this.log = function (pTitle,pMsg) {
        if (this.LOG) {
            console.log(pTitle + '>>', pMsg);
        }
    };
};