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
    <h3 class="label-success" style="margin: 0px 10px 10px 20px; padding: 5px; color: #FFF; border-left: 5px #CB9420 solid; ">Quản lý Vai trò</h3>
    <div class="col-sm-4" style="padding-left: 20px; padding-right: 0px;">
        <div class="well well-sm" style="margin-bottom:5px">
            <div class="form-group-sm">
                <label>Mã <span class="require">(*)</span></label>
                <input type="text" class="form-control" id="txt_ma" placeholder="Mã" />
            </div>
            <div class="form-group-sm">
                <label>Tên <span class="require">(*)</span></label>
                <input type="text" class="form-control" id="txt_ten" placeholder="Tên" />
            </div>
            <div class="form-group-sm">
                <label>Mô tả <span class="require">(*)</span></label>
                <input type="text" class="form-control" id="txt_mo_ta" placeholder="Mô tả" />
            </div>
            <div class="form-group-sm">
                <label>Trạng thái </label>
                <select class="form-control" id="sel_trang_thai">
                    <option value="A">Kích hoạt</option>
                    <option value="D">Khóa</option>
                </select>
            </div>
            <div class="form-group-sm ACTIONS">
                <hr>
                <input type="hidden" id="hdf_id" value="0" />
                <button type="button" class="btn btn-info btn-sm" id="btn_moi"><i class="glyphicon glyphicon-plus"></i> Thêm mới</button>
                <button type="button" class="btn btn-warning btn-sm" id="btn_luu"><i class="glyphicon glyphicon-save"></i> Lưu</button>
                <button type="button" class="btn btn-danger btn-sm" id="btn_xoa"><i class="glyphicon glyphicon-trash"></i> Xóa</button>
                <div class="WecMesseage"></div>
            </div>
        </div>

    </div>
    <div class="col-sm-8" style="margin:0px">
        <div class="row panel panel-primary" id="LIST">
            <div class="panel-heading">Danh sách vai trò</div>
            <div class="panel-body">
                <table class="table table-striped table-bordered table-hover table-columned" id="tblDanhSach">
                    <thead>
                        <tr>
                            <th class="col-md-1">#</th>
                            <th class="col-md-2">Mã</th>
                            <th class="col-md-3">Tên</th>
                            <th class="col-md-2">Mô tả</th>
                            <th class="col-md-1">Trạng thái</th>
                        </tr>
                    </thead>
                    <tbody></tbody>
                </table>
            </div>
        </div>
    </div>
</div>

