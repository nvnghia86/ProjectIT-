<link href="<?= AppObject::getBaseFile('libs/datatable/css/dataTables.bootstrap.css') ?>" rel="stylesheet" media="screen">
<script type="text/javascript" src="<?= AppObject::getBaseFile('libs/datatable/js/jquery.dataTables.min.js') ?>"></script>
<script type="text/javascript" src="<?= AppObject::getBaseFile('libs/datatable/js/dataTables.bootstrap.js') ?>"></script>
<script type="text/javascript" src="<?= AppObject::getBaseFile('libs/datatable/js/fnAddTr.js') ?>"></script>

<script src="<?= AppObject::getBaseFile('core/core.ajax.js') ?>"></script>
<script src="<?= AppObject::getBaseFile('app/ht_vai_tro/js/HT_VAI_TRO.js') ?>"></script>
<script>
    var _url = '?app=ht_vai_tro&view=ajax';
    var VaiTro = new HT_VAI_TRO(_url);
    VaiTro.LOG = true;
    var tblDanhSach = $('#tblDanhSach').DataTable({
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

    function DanhSach_bind() {
        VaiTro.find_01();
        tblDanhSach.clear().draw();
        var aRows = [];

        for (var i = 0; i < VaiTro.DanhSach.length; i++) {
            var _item = VaiTro.DanhSach[i];
            var _icon = '';
            switch (_item.TRANG_THAI) {
                case 'A':
                    _icon = '<i class="glyphicon glyphicon-ok"><\/i>';
                    break;
                case 'D':
                    _icon = '<i class="glyphicon glyphicon-remove"><\/i>';
                    break;
            }
            var _hidden = '<input type="hidden" class="hdf_ID_CHUC_NANG" value="' + _item.ID_VAI_TRO + '" />';
            aRows.push([
                (i + 1),
                _item.MA,
                _item.TEN,
                _item.MO_TA,
                _icon + _hidden
            ]);
        }
        tblDanhSach.rows.add(aRows).draw();
    }

    function Page_init() {
        DanhSach_bind();
        Action_filter();
    }

    function Form_clear() {
        $('#hdf_id').val('0');
        $('#txt_ma').val('');
        $('#txt_ten').val('');
        $('#txt_mo_ta').val('');
        $('#sel_trang_thai').val('0');
    }

    function Form_bind() {
        $('#hdf_id').val(VaiTro.ChiTiet['ID_VAI_TRO']);
        $('#txt_ma').val(VaiTro.ChiTiet['MA']);
        $('#txt_ten').val(VaiTro.ChiTiet['TEN']);
        $('#txt_mo_ta').val(VaiTro.ChiTiet['MO_TA']);
        $('#sel_trang_thai').val(VaiTro.ChiTiet['TRANG_THAI']);
    }

    function Action_filter() {
        var _id = $('#hdf_id').val();
        if (_id == '0') {
            $('#btn_xoa').hide();
        } else {
            $('#btn_xoa').show();
        }
    }



    $(function () {
        Page_init();

        $('#tblDanhSach tbody').on('click', 'tr', function () {
            if ($(this).hasClass('selected')) {
                $(this).removeClass('selected');
                $('#hdf_id').val('0');
                Form_clear();
                Action_filter();
            } else {
                tblDanhSach.$('tr.selected').removeClass('selected');
                $(this).addClass('selected');
                var _id = $(this).find(".hdf_ID_CHUC_NANG").val();
                VaiTro.get(_id);
                Form_bind();
                Action_filter();
            }
        });

        $('.ACTIONS').on('click', '#btn_moi', function (e) {
            Page_init();
        });

        $('.ACTIONS').on('click', '#btn_luu', function (e) {
            VaiTro.ID_VAI_TRO = $('#hdf_id').val();
            VaiTro.MA = $('#txt_ma').val();
            VaiTro.TEN = $('#txt_ten ').val();
            VaiTro.MO_TA = $('#txt_mo_ta').val();
            VaiTro.TRANG_THAI = $('#sel_trang_thai').val();
            var _rs = VaiTro.save();
            if (_rs.CODE = 'SUC') {
                Page_init();
            }
            alert(_rs.MESSAGE);
        });

        $('.ACTIONS').on('click', '#btn_xoa', function () {
            var _confirm = window.confirm('Bạn có chắc chắn muốn xóa không?');
            if (_confirm) {
                VaiTro.ID_VAI_TRO = $('#hdf_id').val();
                var _rs = VaiTro.delete();
                if (_rs.CODE = 'SUC') {
                    Page_init();
                }
                alert(_rs.MESSAGE);
            }
        });

    });

</script>
