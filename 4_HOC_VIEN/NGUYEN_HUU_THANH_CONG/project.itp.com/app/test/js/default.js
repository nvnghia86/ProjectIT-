var APP_TEMPLATE = function (pUrl, pDebug) {
    this.Debug = (pDebug !== undefined) ? pDebug : '0';
    this.Url = pUrl;

    this.DANHSACH = [];
    this.CHITIET = null;

    this.getDANHSACH = function () {
        var SERV = new CORE_SERVICE(that.Url, that.Debug);
        var _rsp = SERV.getData('ca_congvan_get_cdv');
        if (_rsp.status === 'SUC') {
            that.DANHSACH = _rsp.data;
        }
        that.log(that.DANHSACH);
    };

    this.getCHITIET = function (ID_CONGVAN) {
        var SERV = new CORE_SERVICE(that.Url, that.Debug);
        var _rsp = SERV.getData('ca_congvan_get_cdv_byid',ID_CONGVAN);

        if (_rsp.status === 'SUC') {
            that.CHITIET = _rsp.data[0];
        }
        that.log(that.CHITIET);
    };

    this.getUrlParameter = function(sParam) {
        var sPageURL = decodeURIComponent(window.location.search.substring(1)),
                sURLVariables = sPageURL.split('&'),
                sParameterName,
                i;

        for (i = 0; i < sURLVariables.length; i++) {
            sParameterName = sURLVariables[i].split('=');

            if (sParameterName[0] === sParam) {
                return sParameterName[1] === undefined ? true : sParameterName[1];
            }
        }
    };


    // Utilities 
    this.bindTable = function (pTableID, pData) {
        
    };

    this.log = function (content) {
        if (that.Debug == '1') {
            console.log('ECC LOG: ', content);
        }
    };

    var that = this;
};