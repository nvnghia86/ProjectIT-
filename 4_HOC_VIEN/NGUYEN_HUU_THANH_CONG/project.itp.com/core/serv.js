var CORE_SERVICE = function (pApiUrl, pDebug) {
    this.ApiUrl = pApiUrl;
    this.debug = (pDebug !== undefined) ? pDebug : '0';
    var that = this;

    this.getData = function (pCommand, pParrams) {
        var _response;
        if (that.ApiUrl == null || that.ApiUrl == '') {
            alert('Lỗi: API không hợp lệ');
            return;
        }
        
        var _parrams = (pParrams !== undefined) ? pParrams : "";

        var _args = {
            act: 'get_data',
            cmd: pCommand,
            parrams: _parrams
        };

        //that.log(that.ApiUrl);
        var _ajax = $.ajax({
            url: that.ApiUrl,
            type: "post",
            data: _args,
            async: false
        });

        _ajax.done(function (response, textStatus, jqXHR) {
            // show successfully for submit message
            _response = JSON.parse(response);
        });

        _ajax.fail(function (response, textStatus, jqXHR) {
            console.log('ERR: Server  ERROR');
            _response = JSON.parse(response);
        });
        return _response;
        
    };

    this.test = function () {
        var _response;
        var _args = {act: 'test'};
        that.log(that.ApiUrl);
        var _ajax = $.ajax({
            url: that.ApiUrl,
            type: "post",
            data: _args,
            async: false
        });

        _ajax.done(function (response, textStatus, jqXHR) {
            // show successfully for submit message
            that.log(response);
            that.log(textStatus);
        });

        _ajax.fail(function (response, textStatus, jqXHR) {
            console.log('ERR: Server  ERROR');
            that.log(response);
            that.log(textStatus);
        });
        return _response;
    };

    this.log = function (content) {
        if (that.debug) {
            console.log('ECC LOG: ', content);
        }
    };

};