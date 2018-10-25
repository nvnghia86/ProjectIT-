var MenuNgang = function (pUrl) {
  
    this.TreeData = null;

    // Others
    this.URL = pUrl;
    this.LOG = false;
    this.ChiTiet = null;
    this.DanhSach = [];
    
    this.CoreData = new CoreDataAjax();
    var that = this;

    this.getTree = function () {
        var _pars = {LOAI:'1'}
        var _data = {COMMAND:'p_ht_chucnang_filter_loai', PARAMS:_pars, ID:'id_ht_chucnang',ID_PARENT:'id_ht_chucnang_cha'};
        var _rs = that.CoreData.callDataGet('CallProcGetTreeData', _data)
        that.TreeData =  Object.keys(_rs).map(function(key) {
            return [Number(key), _rs[key]];
        }); 
    };

};