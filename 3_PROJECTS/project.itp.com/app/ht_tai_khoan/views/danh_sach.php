<style>
    #tblDanhSach > tbody > tr:hover {
        cursor: pointer;
        background-color: #0EB2D4;
    }

    #tblDanhSach > tbody tr.selected {
        color: white;
        background-color: #0EB2D4 !important;
    }

</style>

<div class="row" style="margin-top:10px; margin-left:-10px;">
    <h3 class="label-success" style="margin: 0px 10px 10px 20px; padding: 5px; color: #FFF; border-left: 5px #CB9420 solid; ">Quản lý Tài khoản</h3>
    <div class="col-sm-4" style="padding-left: 20px; padding-right: 0px;">
        <div class="well well-sm" style="margin-bottom:5px">
            <div class="form-group-sm">
                <label>Đơn vị </label>
                <select class="form-control" id="selDonVi"></select>
            </div>
            <div class="form-group-sm">
                <label>Họ và tên <span class="require">(*)</span></label>
                <input type="text" class="form-control" id="txtHoTen" placeholder="Họ và tên" />
            </div>
            <div class="form-group-sm">
                <label>Tài khoản <span class="require">(*)</span></label>
                <input type="text" class="form-control" id="txtTaiKhoan" placeholder="Tài khoản đăng nhập" />
            </div>
            <div class="form-group-sm">
                <label>Mật khẩu <span class="require">(*)</span></label>
                <input type="password" class="form-control" id="txtMatKhau"/>
            </div>
            <div class="form-group-sm">
                <label>Xác nhận mật khẩu <span class="require">(*)</span></label>
                <input type="password" class="form-control" id="txtMatKhau2" />
            </div>
            <div class="form-group-sm">
                <label>Số điện thoại </label>
                <input type="text" class="form-control" id="txtDienThoai" placeholder="" />
            </div>
            <div class="form-group-sm">
                <label>Email </label>
                <input type="text" class="form-control" id="txtEmail" placeholder="" />
            </div>
            <div class="form-group-sm">
                <label>Vai trò </label>
                <select class="form-control" id="selVaiTro"></select>
            </div>

            <div class="form-group-sm">
                <label>Trạng thái </label>
                <select class="form-control" id="selTrangThai">
                    <option value="A">Kích hoạt</option>
                    <option value="D">Khóa</option>
                </select>
            </div>
            <div class="form-group-sm ACTIONS">
                <hr>
                <input type="hidden" id="hdfID" value="0" />
                <button type="button" class="btn btn-info btn-sm" id="btnThemMoi"><i class="glyphicon glyphicon-plus"></i> Thêm mới</button>
                <button type="button" class="btn btn-warning btn-sm" id="btnLuu"><i class="glyphicon glyphicon-save"></i> Lưu</button>
            </div>
        </div>

    </div>
    <div class="col-sm-8" style="margin:0px">
        <div class="row panel panel-primary" id="LIST">
            <div class="panel-heading">Danh sách chức năng</div>
            <div class="panel-body">
                <table class="table table-striped table-bordered table-hover table-columned" id="tblDanhSach">
                    <thead>
                        <tr>
                            <th class="col-md-1">#</th>
                            <th class="col-md-2">Tài khoản</th>
                            <th class="col-md-3">Họ và tên</th>
                            <th class="col-md-3">Đơn vị</th>
                            <th class="col-md-2">Vai trò</th>
                            <th class="col-md-1">Trạng thái</th>
                        </tr>
                    </thead>
                    <tbody></tbody>
                </table>
            </div>
        </div>
    </div>
</div>