<?php
if (!defined('AREA')) {
    die('Access denied');
}
?>
<div class="row" style="margin-top:10px;">
    <h3 class="label-default" style="margin: 0px 10px 10px 10px; padding: 2px; color: #FFF; border-left: 5px #CB9420 solid; font-size: 14px">
      Quản lý danh mục khách hàng
    </h3>
    <div class="well-sm well"  style="margin: 0px 10px 10px 10px;">
        <button type="button" class="btn btn-success btn-xs" id="btnTaiLai">
            <i class="glyphicon glyphicon-refresh"></i> Tải lại
        </button>
        <button type="button" class="btn btn-primary btn-xs" id="btnThemMoi">
            <i class="glyphicon glyphicon-plus"></i> Thêm mới</button>
        <button type="button" class="btn btn-danger btn-xs" id="btnXoa">
            <i class="glyphicon glyphicon-trash"></i> Xóa
        </button>
    </div>
    <div class="col-sm-12">
        <div class="row panel panel-primary" id="LIST">
            <div class="panel-heading">Danh sách khách hàng</div>
            <div class="panel-body">
                <table class="table table-bordered table-stripped">
                    <thead>
                        <tr>
                            <th><input type="checkbox" id="chkAll" /></th>
                            <th>STT</th>
                            <th>Tên</th>
                            <th>Email</th>
                            <th>Số điện thoại</th>
                            <th>Mật khẩu</th>
                            <th>Trạng thái</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="checkbox" id="chk_1" /></td>
                            <td>1</td>
                            <td>Phan Anh Sơn</td>
                            <td>phananhson24101995@gmail.com</td>
                            <td>0965 453 286</td>
                            <td>123</td>
                            <td>
                                <span class="label label-success">Sử dụng</span>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<script>
	// Khai báo đối tượng cửa sổ
	var EccDialog = new ECC_DIALOG();
	
	$(function(){
		
		// Bắt sự kiện khi ấn nút thêm mới
		$('#btnThemMoi').on('click',function(){
			// Hiển thị cửa sổ popup
			EccDialog.show(
				'Tạo mới khách hàng', 
				'?app=ChKhachHang&view=ChiTiet&layout=popup', 
				'50%', '380');
		});
	});

</script>