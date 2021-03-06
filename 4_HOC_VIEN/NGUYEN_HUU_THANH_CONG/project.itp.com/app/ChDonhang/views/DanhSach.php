<?php if (!defined('AREA')) {
    die('Access denied');
} ?>
<div class="row" style="margin-top:10px;">
    <h3 class="label-default" style="margin: 0px 10px 10px 10px; padding: 2px; color: #FFF; border-left: 5px #CB9420 solid; font-size: 14px">Quản lý danh mục Đơn Hàng</h3>
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
            <div class="panel-heading">Danh sách Đơn Hàng</div>
            <div class="panel-body">
                <table class="table table-bordered table-stripped">
					<thead>
						<tr>
							<th><input type="checkbox" id="chkAll" /></th>
							<th>STT</th>
							<th>Mã </th>
							<th>Ngày Tạo</th>
							<th>Ngày Duyệt</th>
							<th>Ngày Giao</th>
							<th>Ngày Nhận</th>
							<th>Tên Người Nhận</th>
							<th>SDT Người Nhận</th>
							<th>Địa chỉ Người Nhận</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox" id="chk_1" /></td>
							<td>1</td>
							<td>0</td>
							<td>10/10/2018</td>
							<td>12/10/2018</td>
							<td>14/10/2018</td>
							<td>15/10/2018</td>
							<td>Nguyễn Hùng</td>
							<td>09888888888</td>
							<td> Thôn 1, xóm 1, Lương Tài, Bắc Ninh</td>
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
    $(function() {
        // Bắt sự kiện khi ấn nút Thêm Mới
        $( '#btnThemMoi').on('click',function(){
            //Hiển thị cửa sổ popup
            
            EccDialog.show(
			'Tạo mới danh mục bảo hành', 
				'?app=chDonHang&view=ChiTiet&layout=popup', 
				'70%', '510');
        });
            });        
                
  
            
   </script>        