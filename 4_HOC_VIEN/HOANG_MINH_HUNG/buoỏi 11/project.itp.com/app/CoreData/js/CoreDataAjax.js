var CoreDataAjax = function () {
    this.URL = '?app=CoreData';
    this.LOG = false;
    var that = this;

    this.callDataGet = function (p_task, p_params){
        var _rs = null;
        if (that.URL == null || that.URL == '') {
            alert('Lỗi: URL không hợp lệ');
            return false;
        }

        var request = $.ajax({
            url: that.URL + '&task=' + p_task,
            type: "POST",
            data: JSON.stringify(p_params),
            contentType: 'application/json; charset=utf-8',
            dataType: "json",
            async: false
        });

        request.done(function (_response) {
            _rs = _response;
            that.log(_rs);
        });

        request.fail(function (jqXHR, textStatus) {
            alert("Lỗi tại server: " + textStatus);
        });

        return _rs;
        
    };

    this.log = function (content) {
        if (that.LOG) {
            console.log('[CORE_AJAX] Log>>', content);
        }
    };

};