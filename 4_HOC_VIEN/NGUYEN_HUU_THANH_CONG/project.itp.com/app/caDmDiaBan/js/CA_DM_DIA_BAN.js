var CA_DM_DIA_BAN = function (pUrl) {
    this.ID_DM_DIA_BAN = '';
    this.MA = '';
    this.TEN = '';
    this.MO_TA = '';
    this.TRANG_THAI = '';
    this.ID_NHOM = '';
    this.ID_DM_DIA_BAN_CHA = '';
    
    this.TreeData = null;

    // Others
    this.URL = pUrl;
    this.LOG = false;
    this.ChiTiet = null;
    this.DanhSach = [];
    
    this.CoreData = new CoreDataAjax();
    var that = this;

    this.getTree = function () {
        var _params = {COMMAND:'p_dm_diaban_find_all', PARAMS:'', ID:'ID_DM_DIA_BAN',ID_PARENT:'ID_DM_DIA_BAN_CHA'};
        //var _rs = that.CoreData.callDataGet('CallProcGetTreeData', _params);
        that.TreeData = that.CoreData.callDataGet('CallProcGetTreeData', _params);
    };
    
    this.save = function () {
        var _params = {
            ID_DM_DIA_BAN: this.ID_DM_DIA_BAN,
            MA: this.MA,
            TEN: this.TEN,
            MO_TA: this.MO_TA,
            TRANG_THAI: this.TRANG_THAI,
            ID_NHOM: this.ID_NHOM,
            ID_DM_DIA_BAN_CHA: this.ID_DM_DIA_BAN_CHA
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