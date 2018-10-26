<?php
if (!defined('AREA')) {
    die('Access denied');
}
?>
<!DOCTYPE html>
<link href="<?php echo AppObject::getBaseFile('app/main/css/style.css') ?>" rel="stylesheet" media="screen">
<link rel="stylesheet" href="<?= AppObject::getBaseFile('libs/Datatables/css/dataTables.bootstrap.css') ?>">
<script src="<?= AppObject::getBaseFile('libs/Datatables/js/jquery.dataTables.min.js') ?>"></script>
<script src="<?= AppObject::getBaseFile('libs/Datatables/js/dataTables.bootstrap.js') ?>"></script>

<div class="content-wrapper">
    <div class="col-md-8">
        <!-- My messages -->
        <div class="panel panel-flat">
            <div class="panel-heading">
                <h3 class="panel-title">Thống kê công văn</h3>
                <hr>
                <div class="heading-elements" id="ACTIONS">
                    <button class="btn btn-success btn-xs" id="CAPNHAT"><i class="icon icon-sync position-left"></i> Cập nhật</button>
                    <span class="label-flat"><i class="icon-history text-warning position-left"></i> <span id="THOIGIAN_CAPNHAT"></span> </span>
                </div>
            </div>

            <!-- Area chart -->
            <div id="messages-stats"></div>
            <!-- /area chart -->

            <!-- Tabs -->
            <ul class="nav nav-lg nav-tabs nav-justified no-margin no-border-radius bg-indigo-400 border-top border-top-indigo-300">
                <li class="active">
                    <a href="#messages-tue" class="text-size-small text-uppercase" data-toggle="tab">
                        <i class="icon-calendar position-left"></i>
                        Tuần
                    </a>
                </li>

                <li>
                    <a href="#messages-mon" class="text-size-small text-uppercase" data-toggle="tab">
                        <i class="icon-calendar3 position-left"></i>
                        Tháng
                    </a>
                </li>

                <li>
                    <a href="#messages-fri" class="text-size-small text-uppercase" data-toggle="tab">
                        <i class="icon-grid52 position-left"></i>
                        Tổng
                    </a>
                </li>
            </ul>
            <!-- /tabs -->
            <!-- Tabs content -->
            <div class="tab-content">
                <div class="tab-pane active fade in has-padding" id="messages-tue">
                    <table class="table table-striped table-bordered table-hover table-columned" id="DANHSACH_TUAN">
                        <caption class="bg-blue-400 text-center">Danh sách công văn trong tuần:</caption>
                        <thead>
                            <tr>
                                <th class="col-md-1">#</th>
                                <th class="col-md-2">Mã số công văn</th>
                                <th class="col-md-4">Tiêu đề</th>
                                <th class="col-md-2">Nơi gửi</th>
                                <th class="col-md-1">Ngày nhận</th>
                                <th class="col-md-1">Tác vụ</th>
                            </tr>
                        </thead>
                        <tbody></tbody> 
                    </table>
                </div>

                <div class="tab-pane fade has-padding" id="messages-mon">
                    <table class="table table-striped table-bordered table-hover table-columned" id="DANHSACH_THANG">
                        <caption class="bg-blue-400 text-center">Danh sách công văn trong tháng:</caption>
                        <thead>
                            <tr>
                                <th class="col-md-1">#</th>
                                <th class="col-md-2">Mã số công văn</th>
                                <th class="col-md-4">Tiêu đề</th>
                                <th class="col-md-2">Nơi gửi</th>
                                <th class="col-md-1">Ngày nhận</th>
                                <th class="col-md-1">Tác vụ</th>
                            </tr>
                        </thead>
                        <tbody></tbody> 
                    </table>
                </div>

                <div class="tab-pane fade has-padding" id="messages-fri">
                    <table class="table table-striped table-bordered table-hover table-columned" id="DANHSACH_TONG">
                        <caption class="bg-blue-400 text-center">Danh sách công văn:</caption>
                        <thead>
                            <tr>
                                <th class="col-md-1">#</th>
                                <th class="col-md-2">Mã số công văn</th>
                                <th class="col-md-4">Tiêu đề</th>
                                <th class="col-md-2">Nơi gửi</th>
                                <th class="col-md-1">Ngày nhận</th>
                                <th class="col-md-1">Tác vụ</th>
                            </tr>
                        </thead>
                        <tbody></tbody> 
                    </table>
                </div>
            </div>
            <!-- /tabs content -->

        </div>
        <!-- /my messages -->
    </div>

    <!-- Quick stats boxes -->
    <div class="col-md-4">
        <div class="panel bg-teal-400">
            <div class="panel-body">
                <div class="heading-elements">
                    <span class="heading-text badge bg-teal-800">+53,6%</span>
                </div>

                <h3 class="no-margin">3,450</h3>
                Members online
                <div class="text-muted text-size-small">489 avg</div>
            </div>

            <div class="container-fluid">
                <div id="members-online"></div>
            </div>
        </div>
        <!-- /members online -->
        <!-- Current server load -->
        <div class="panel bg-pink-400">
            <div class="panel-body">
                <div class="heading-elements">
                    <ul class="icons-list">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-cog3"></i> <span class="caret"></span></a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li><a href="#"><i class="icon-sync"></i> Update data</a></li>
                                <li><a href="#"><i class="icon-list-unordered"></i> Detailed log</a></li>
                                <li><a href="#"><i class="icon-pie5"></i> Statistics</a></li>
                                <li><a href="#"><i class="icon-cross3"></i> Clear list</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

                <h3 class="no-margin">49.4%</h3>
                Current server load
                <div class="text-muted text-size-small">34.6% avg</div>
            </div>

            <div id="server-load"></div>
        </div>
        <!-- /current server load -->
        <!-- Today's revenue -->
        <div class="panel bg-blue-400">
            <div class="panel-body">
                <div class="heading-elements">
                    <ul class="icons-list">
                        <li><a data-action="reload"></a></li>
                    </ul>
                </div>

                <h3 class="no-margin">$18,390</h3>
                Today's revenue
                <div class="text-muted text-size-small">$37,578 avg</div>
            </div>

            <div id="today-revenue"></div>
        </div>
        <!-- /today's revenue -->
    </div>
    <!-- /quick stats boxes -->


</div>

<script src="<?= AppObject::getBaseFile('core/serv.js') ?>"></script>
<script src="<?= AppObject::getBaseFile('app/congvan/js/congvanden.js') ?>"></script>
<?php include_once(AppObject::getBaseFile('modules/IziModal/IziModal_v1.php')); ?>
<script type="text/javascript">
    var _url = "core/core.service.php";
    var CVD = new CONGVANDEN(_url, 1);
    var tblDANHSACH_TUAN = $('#DANHSACH_TUAN').DataTable({
        "paging": true,
        "autoWidth": false,
        "searching": true,
        "ordering": true,
        "language": {
            "decimal": "",
            "emptyTable": "Danh sách trống",
            "info": "Hiển thị _START_ đến _END_ trong _TOTAL_ kết quả",
            "infoEmpty": "Showing 0 to 0 of 0 entries",
            "infoFiltered": "(filtered from _MAX_ total entries)",
            "infoPostFix": "",
            "thousands": ",",
            "lengthMenu": "Hiển thị _MENU_ kết quả",
            "loadingRecords": "Loading...",
            "processing": "Processing...",
            "search": "Tìm kiếm nhanh: ",
            "zeroRecords": "No matching records found",
            "paginate": {
                "first": "Đầu ",
                "last": "Cuối",
                "next": "Sau",
                "previous": "Trước"
            },
            "aria": {
                "sortAscending": ": activate to sort column ascending",
                "sortDescending": ": activate to sort column descending"
            }
        }

    });
    var tblDANHSACH_THANG = $('#DANHSACH_THANG').DataTable({
        "paging": true,
        "autoWidth": false,
        "searching": true,
        "ordering": true,
        "language": {
            "decimal": "",
            "emptyTable": "Danh sách trống",
            "info": "Hiển thị _START_ đến _END_ trong _TOTAL_ kết quả",
            "infoEmpty": "Showing 0 to 0 of 0 entries",
            "infoFiltered": "(filtered from _MAX_ total entries)",
            "infoPostFix": "",
            "thousands": ",",
            "lengthMenu": "Hiển thị _MENU_ kết quả",
            "loadingRecords": "Loading...",
            "processing": "Processing...",
            "search": "Tìm kiếm nhanh: ",
            "zeroRecords": "No matching records found",
            "paginate": {
                "first": "Đầu ",
                "last": "Cuối",
                "next": "Sau",
                "previous": "Trước"
            },
            "aria": {
                "sortAscending": ": activate to sort column ascending",
                "sortDescending": ": activate to sort column descending"
            }
        }

    });
    var tblDANHSACH_TONG = $('#DANHSACH_TONG').DataTable({
        "paging": true,
        "autoWidth": false,
        "searching": true,
        "ordering": true,
        "language": {
            "decimal": "",
            "emptyTable": "Danh sách trống",
            "info": "Hiển thị _START_ đến _END_ trong _TOTAL_ kết quả",
            "infoEmpty": "Showing 0 to 0 of 0 entries",
            "infoFiltered": "(filtered from _MAX_ total entries)",
            "infoPostFix": "",
            "thousands": ",",
            "lengthMenu": "Hiển thị _MENU_ kết quả",
            "loadingRecords": "Loading...",
            "processing": "Processing...",
            "search": "Tìm kiếm nhanh: ",
            "zeroRecords": "No matching records found",
            "paginate": {
                "first": "Đầu ",
                "last": "Cuối",
                "next": "Sau",
                "previous": "Trước"
            },
            "aria": {
                "sortAscending": ": activate to sort column ascending",
                "sortDescending": ": activate to sort column descending"
            }
        }

    });

    function bindDanhSachTuan() {
        var aRows = [];
        tblDANHSACH_TUAN.clear().draw();
        for (var i = 0; i < CVD.DANHSACH_TUAN.length; i++) {
            var _row = CVD.DANHSACH_TUAN[i];
            var _data = '<input type="hidden" value="' + _row.id_congvan + '" class="ID" />';
            var _view = '<button type="button" data-id="' + _row.id_congvan + '" class="btn btn-info btn-xs btnView"> <i class="icon icon-eye"></i> Xem</button>';

            aRows.push([
                (i + 1) + _data,
                _row.maso,
                _row.tieude,
                _row.ten_noi_gui,
                _row.ngay_nhan,
                _view
            ]);

        }
        tblDANHSACH_TUAN.rows.add(aRows).draw();
    }

    function bindDanhSachThang() {
        var aRows = [];
        tblDANHSACH_THANG.clear().draw();
        for (var i = 0; i < CVD.DANHSACH_THANG.length; i++) {
            var _row = CVD.DANHSACH_THANG[i];
            var _data = '<input type="hidden" value="' + _row.id_congvan + '" class="ID" />';
            var _view = '<button type="button" data-id="' + _row.id_congvan + '" class="btn btn-info btn-xs btnView"> <i class="icon icon-eye"></i> Xem</button>';

            aRows.push([
                (i + 1) + _data,
                _row.maso,
                _row.tieude,
                _row.ten_noi_gui,
                _row.ngay_nhan,
                _view
            ]);

        }
        tblDANHSACH_THANG.rows.add(aRows).draw();
    }

    function bindDanhSachTong() {
        var aRows = [];
        tblDANHSACH_TONG.clear().draw();
        for (var i = 0; i < CVD.DANHSACH.length; i++) {
            var _row = CVD.DANHSACH[i];
            var _data = '<input type="hidden" value="' + _row.id_congvan + '" class="ID" />';
            var _view = '<button type="button" data-id="' + _row.id_congvan + '" class="btn btn-info btn-xs btnView"> <i class="icon icon-eye"></i> Xem</button>';

            aRows.push([
                (i + 1) + _data,
                _row.maso,
                _row.tieude,
                _row.ten_noi_gui,
                _row.ngay_nhan,
                _view
            ]);
        }
        tblDANHSACH_TONG.rows.add(aRows).draw();
    }

    function bindData() {
        CVD.getCvdByRange();
        bindDanhSachTuan();
        bindDanhSachThang();
        bindDanhSachTong();

        var dt = new Date();
        var time = dt.getHours() + ":" + dt.getMinutes() + ":" + dt.getSeconds();
        $('#THOIGIAN_CAPNHAT').html(time);
    }

    (function () {
        bindData();

        $('#ACTIONS').on('click', '#CAPNHAT', function () {
            bindData();
        });

        $('table tbody').on('click', 'tr .btnView', function () {
            var _id = $(this).data('id');
            var _taikhoan = $('#TAIKHOAN').val();
            var _url = '?app=congvan&view=pop_congvanden_ct_view&id=' + _id + '&taikhoan=' + _taikhoan;
            var _modal = new IZI_IFRAME_MODAL(_url, 'Xem công văn đến', 900, 600);
            _modal.openModal();
        });

    })(jQuery);
</script>