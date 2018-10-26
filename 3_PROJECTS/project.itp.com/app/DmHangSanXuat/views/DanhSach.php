<?php if (!defined('AREA')) {
    die('Access denied');
} ?>
<div class="row" style="margin-top:10px;">
    <h3 class="label-default" style="margin: 0px 10px 10px 10px; padding: 2px; color: #FFF; border-left: 5px #CB9420 solid; font-size: 14px">Quản lý danh mục hãng sản xuất</h3>
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
            <div class="panel-heading">Danh sách hãng sản xuất</div>
            <div class="panel-body">
                <table class="table table-bordered table-stripped" id="DanhSach">
					<thead>
						<tr>
							<th><input type="checkbox" id="chkAll" /></th>
							<th>STT</th>
							<th>Tên</th>
							<th>Ảnh Logo</th>
							<th>Mô tả</th>
							<th>Trạng thái</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox" id="chk_1" /></td>
							<td>1</td>
							<td>SamSung</td>
							<td></td>
							<td>Hãng điện thoại hàng đầu thế giới</td>
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

<script src="app/DmHangSanXuat/js/DmHangSanXuat.js"></script>
<script>
	// Khai báo đối tượng cửa sổ
	var EccDialog = new ECC_DIALOG();
	var HangSanXuat = new DmHangSanXuat('?app=DmHangSanXuat');
	
	function Page_init(){
		HangSanXuat.FindAll();
		DanhSach_bind();
	}
	
	function DanhSach_bind(){
		
		var _html = '';
		for(var i=0; i< HangSanXuat.DanhSach.length;i++){
			var _dong = HangSanXuat.DanhSach[i];
			
			var _trangthai ='';
			if(_dong.trangthai=='1'){
				_trangthai = '<span class="label label-success">Sử dụng</span>';
			}else{
				_trangthai = '<span class="label label-danger">Khóa</span>';
			}
			
			_html +='<tr>';
			_html +='	<td><input type="checkbox" id="chk_1" /></td>';
			_html +='	<td>'+ (i+1) +'</td>';
			_html +='	<td>'+ _dong.ten +'</td>';
			_html +='	<td>'+ _dong.anh_logo +'</td>';
			_html +='	<td>'+ _dong.mota +'</td>';
			_html +='	<td>';
			_html += _trangthai;
			_html +='	</td>';
			_html +='</tr>';
		}
		$('#DanhSach > tbody').html(_html);
	}

	$(function(){
		Page_init();
		$('#btnThemMoi').on('click',function(){
			EccDialog.show('Tạo mới danh mục hãng sản xuất','?app=DmHangSanXuat&view=ChiTiet&layout=popup','50%','300');
		});
	});
	
</script>