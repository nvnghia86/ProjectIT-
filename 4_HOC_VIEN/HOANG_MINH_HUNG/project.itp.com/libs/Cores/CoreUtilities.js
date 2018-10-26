function CoreUtilities() {
    this.getUrlVars = function () {
        var vars = [], hash;
        var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
        for (var i = 0; i < hashes.length; i++) {
            hash = hashes[i].split('=');
            vars.push(hash[0]);
            vars[hash[0]] = hash[1];
        }
        return vars;
    },

    /*
     * Hàm lấy giá trị truyền trên tham số
     * @returns tham số truyền trên URL
     */
    this.getParameterByName = function (name, url) {
        if (!url) url = window.location.href;
        name = name.replace(/[\[\]]/g, "\\$&");
        var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
            results = regex.exec(url);
        if (!results) return null;
        if (!results[2]) return '';
        return decodeURIComponent(results[2].replace(/\+/g, " "));
    },

    this.getBase64Image = function (pFileInput) {
        var _rs = '';
        try {
            if (pFileInput.files && pFileInput.files[0]) {
                var FR = new FileReader();

                //FR.addEventListener("load", function (e) {
                //    _rs = e.target.result;
                //});

                _rs = FR.readAsDataURL(pFileInput.files[0]);
            } else {
                throw 'Cảnh báo: chưa chọn file';
            }
            
        } catch (e) {
            throw e;
        }
        return _rs;
    }


    /*
        Lấy ngày - tháng - năm hiện tại. VD: Ngày 10 tháng 05 năm 2018
    */
    this.getCurrentDate = function () {
        var today = new Date();
        var dd = today.getDate();
        var mm = today.getMonth() + 1; //January is 0!

        var yyyy = today.getFullYear();
        if (dd < 10) {
            dd = '0' + dd;
        }
        if (mm < 10) {
            mm = '0' + mm;
        }
        var today = 'Ngày ' + dd + ' tháng ' + mm + ' năm ' + yyyy;
        return today;
    }  

    /*
        Lấy tháng giữa 2 khoảng thời gian
    */
    this.MonthBetweenDate_get = function (pFrom, pTo) {
        if (pFrom == 'Invalid Date') {
            return '';
        }

        if ((pFrom instanceof Date) && (pTo instanceof Date)) {
            var year1 = pFrom.getFullYear();
            var year2 = pTo.getFullYear();
            var month1 = pFrom.getMonth();
            var month2 = pTo.getMonth();
            if (month1 === 0) { //Have to take into account
                month1++;
                month2++; 
            }
            var numberOfMonths = (year2 - year1) * 12 + (month2 - month1) - 1;
            return numberOfMonths;
        } else {
            alert('[MonthBetweenDate_get] Lỗi: không đúng định dạng ngày tháng ');
            return false;
        }
    }

    this.showLoading = function () {

    }

    var that = this;
}

