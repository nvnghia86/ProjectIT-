<?php if (!defined('AREA')) {
    die('Access denied');
} ?>
<div class="row" style="margin-top:10px;">
    <h3 class="label-default" style="margin: 0px 10px 10px 10px; padding: 2px; color: #FFF; border-left: 5px #CB9420 solid; font-size: 14px">Quản lý danh mục khuyến mại</h3>
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
            <div class="panel-heading">Danh sách khuyến mại</div>
            <div class="panel-body">
                <table class="table table-bordered table-stripped" id="DanhSach">
					<thead>
						<tr>
							<th><input type="checkbox" id="chkAll" /></th>
							<th>Mã</th>
							<th>Tên</th>
							<th>Nội dung</th>
							<th>Trạng thái</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox" id="chk_1" /></td>
							<td>1</td>
							<td>Mua 1 tặng 1</td>
							<td>khuyến mại 1 tặng 1 khi mua điện thoại di dộng bất kì</td>
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
<script src="app/DmKhuyenmai/js/DmKhuyenmai.js"></script>
<script>
	// Khai báo đối tượng cửa sổ
	var EccDialog = new ECC_DIALOG();
	var Khuyenmai = new DmKhuyenmai('?app=DmKhuyenmai');
	
	function Page_init(){
		Khuyenmai.FindAll();
		DanhSach_bind();
	}
	
	function DanhSach_bind(){
		
		var _html = '';
		for(var i=0; i< Khuyenmai.DanhSach.length;i++){
			var _dong = Khuyenmai.DanhSach[i];
			
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
			_html +='	<td>'+ _dong.noidung +'</td>';
			_html +='	<td>';
			_html += _trangthai;
			_html +='	</td>';
			_html +='</tr>';
		}
		$('#DanhSach > tbody').html(_html);
	}
	
	$(function(){
		
		Page_init();
		// Bắt sự kiện khi ấn nút thêm mới
		$('#btnThemMoi').on('click',function(){
			// Hiển thị cửa sổ popup
			EccDialog.show(
				'Tạo mới danh mục khuyến mại', 
				'?app=DmKhuyenmai&view=ChiTiet&layout=popup', 
				'50%', '450');
		});
	});

</script>







