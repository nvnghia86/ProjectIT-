<link href="<?= AppObject::getBaseFile('libs/datatable/css/dataTables.bootstrap.css') ?>" rel="stylesheet" media="screen">
<script type="text/javascript" src="<?= AppObject::getBaseFile('libs/datatable/js/jquery.dataTables.min.js') ?>"></script>
<script type="text/javascript" src="<?= AppObject::getBaseFile('libs/datatable/js/dataTables.bootstrap.js') ?>"></script>
<script type="text/javascript" src="<?= AppObject::getBaseFile('libs/datatable/js/fnAddTr.js') ?>"></script>

<script src="<?= AppObject::getBaseFile('core/core.ajax.js') ?>"></script>
<script src="<?= AppObject::getBaseFile('app/ht_tai_khoan/js/HT_TAI_KHOAN.js') ?>"></script>
<script src="<?= AppObject::getBaseFile('app/ht_tai_khoan/js/HT_DON_VI.js') ?>"></script>
<script src="<?= AppObject::getBaseFile('app/ht_vai_tro/js/HT_VAI_TRO.js') ?>"></script>
<script>
    var _url = '?app=ht_tai_khoan&view=ajax';
    var TaiKhoan = new HT_TAI_KHOAN(_url);
    var DonVi = new HT_DON_VI(_url);
    var VaiTro = new HT_VAI_TRO('?app=ht_vai_tro&view=ajax');
    TaiKhoan.LOG = true;
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
        TaiKhoan.taikhoan_lietke();
        tblDanhSach.clear().draw();
        var aRows = [];

        for (var i = 0; i < TaiKhoan.DanhSach.length; i++) {
            var _item = TaiKhoan.DanhSach[i];
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
                _item.TAI_KHOAN,
                _item.HO_TEN,
                _item.DON_VI_TEN,
                _item.VAI_TRO_TEN,
                _icon + _hidden
            ]);
        }
        tblDanhSach.rows.add(aRows).draw();
    }

    function DonVi_bind() {
       DonVi.lietke();
       var _html = '';
       for (var i = 0; i < DonVi.DanhSach.length; i++) {
            var _item = DonVi.DanhSach[i];
            _html +='<option value="'+ _item['ID_DON_VI'] +'">'+ _item['TEN_DON_VI'] +'</option>';
       }
       $('#selDonVi').html(_html);
    }
    
    function VaiTro_bind() {
       VaiTro.find_01();
       var _html = '';
       for (var i = 0; i < VaiTro.DanhSach.length; i++) {
            var _item = VaiTro.DanhSach[i];
            _html +='<option value="'+ _item['ID_VAI_TRO'] +'">'+ _item['TEN'] +'</option>';
       }
       $('#selVaiTro').html(_html);
    }

    function Page_init() {
        Form_clear();
        DanhSach_bind();
        DonVi_bind();
        VaiTro_bind();
        Action_filter();
    }

    function Form_clear() {
        $('#selDonVi').val('0');
        $('#txtHoTen').val('');
        $('#txtTaiKhoan').val('');
        $('#txtMatKhau').val('');
        $('#txtMatKhau2').val('');
        $('#txtDienThoai').val('');
        $('#txtEmail').val('');
        $('#selVaiTro').val('0');
        $('#selTrangThai').val('A');
        $('#hdfID').val('0');
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

        $('.ACTIONS').on('click', '#btnThemMoi', function (e) {
            Page_init();
        });

        $('.ACTIONS').on('click', '#btnLuu', function (e) {
            TaiKhoan.ID_TAI_KHOAN = $('#hdfID').val();
            TaiKhoan.TAI_KHOAN = $('#txtTaiKhoan').val();
            TaiKhoan.HO_TEN = $('#txtHoTen').val();
            TaiKhoan.ID_DON_VI = $('#selDonVi').val();
            TaiKhoan.MAT_KHAU = $('#txtMatKhau').val();
            TaiKhoan.SO_DIEN_THOAI = $('#txtDienThoai').val();
            TaiKhoan.EMAIL = $('#txtEmail').val();
            TaiKhoan.ID_VAI_TRO = $('#selVaiTro').val();
            TaiKhoan.TRANG_THAI = $('#selTrangThai').val();
            var _rs = TaiKhoan.taikhoan_luu();
            if (_rs.CODE == 'SUC') {
                Page_init();
            }
            alert(_rs.MESSAGE);
        });

    });

</script>
