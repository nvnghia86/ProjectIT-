<?php if (!defined('AREA')) {die('Access denied');} ?>
<div class="row" style="margin-top:10px;">
    <h3 class="label-default" style="margin: 0px 10px 10px 10px; padding: 2px; color: #FFF; border-left: 5px #CB9420 solid; font-size: 14px">Quản lý sản phẩm thuộc tính</h3>
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
            <div class="panel-heading">Danh sách sản phẩm thuộc tính</div>
            <div class="panel-body">
                <table class="table table-bordered table-stripped">
					<thead>
						<tr>
							<th><input type="checkbox" id="chkAll" /></th>
							<th>STT</th>
							<th>Màu</th>
							<th>Trạng thái</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox" id="chk_1" /></td>
							<td>1</td>
							<td>Xanh lá</td>
							<td>
								<span class="label label-success">Còn hàng</span>
							</td>
						</tr>
					</tbody>
				</table>
            </div>
        </div>
    </div>
</div>
<script>
	//Khai báo đối tượng cửa sổ 
	var  EccDiaLog = new ECC_DIALOG();
	$(function()
	{
		//Bắt sự kiện khi kích nút thêm mới
		$('#btnThemMoi').on('click',function()
			{
				//Hiển thị cửa sổ popup
				EccDiaLog.show('Tạo mới danh mục sản phẩm thuộc tính',
								'?app=ChSanPhamThuocTinh&view=ChiTiet&layout=popup',
								'50%','350');
			}
		)
	}
		)

</script>