<?php if (!defined('AREA')) {
    die('Access denied');
} ?>
<div class="row" style="margin-top:10px;">
    <h3 class="label-default" style="margin: 0px 10px 10px 10px; padding: 2px; color: #FFF; border-left: 5px #CB9420 solid; font-size: 14px">Quản lý CH Sản Phẩm</h3>
	<div class="well-sm well"  style="margin: 0px 10px 10px 10px;">
		<button type="button" class="btn btn-success btn-xs" id="btnTaiLai">
			<i class="glyphicon glyphicon-refresh"></i> Tải lại
		</button>
		<button type="button" class="btn btn-primary btn-xs" id="btnThemMoi">
		<i class="glyphicon glyphicon-plus"></i> Thêm mới</button>
		<button type="button" class="btn btn-warning btn-xs" id="btnSua">
		<i class="glyphicon glyphicon-edit"></i> Sửa</button>
		<button type="button" class="btn btn-danger btn-xs" id="btnXoa">
			<i class="glyphicon glyphicon-trash"></i> Xóa
		</button>
    </div>
    <div class="col-sm-12">
        <div class="row panel panel-primary" id="LIST">
            <div class="panel-heading">Danh sách sản phẩm</div>
            <div class="panel-body">
                <table class="table table-bordered table-stripped" id="DanhSach">
					<thead>
						<tr>
							<th><input type="checkbox" id="chkAll" /></th>
							<th>STT</th>
							<th>Tên</th>
							<th>Mô tả</th>
							<th>Trạng thái</th>
						</tr>
					</thead>
					<tbody></tbody>
				</table>
            </div>
        </div>
    </div>
</div>
<script src="app/DmHinhThucThanhToan/js/DmHinhThucThanhToan.js"></script>
<script>
	var EccDialog = new ECC_DIALOG(Page_init);
	var HinhThucThanhToan = new DmHinhThucThanhToan('?app=DmHinhThucThanhToan');
	var tblDanhSach=null;
	function DanhSach_phantrang(){
		tblDanhSach= $('#DanhSach').DataTable({
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
	
	}

	
	function Page_init(){
		HinhThucThanhToan.id_dm_hinhthuc_thanhtoan=0;
		HinhThucThanhToan.FindAll();
		DanhSach_bind();
		Action_filter();
	}
	
	function Action_filter(){
		if(HinhThucThanhToan.id_dm_hinhthuc_thanhtoan != 0){
			$('#btnSua').show();
			$('#btnXoa').show();
		}else{
			$('#btnSua').hide();
			$('#btnXoa').hide();
		}
	}
	
	function DanhSach_bind(){
		
		var _html = '';
		var aRows = [];
		tblDanhSach.clear().draw();
		for(var i=0; i< HinhThucThanhToan.DanhSach.length;i++){
			var _dong = HinhThucThanhToan.DanhSach[i];
			
			var _trangthai ='';
			if(_dong.trangthai=='1'){
				_trangthai = '<span data-id="'+ _dong.id_dm_hinhthuc_thanhtoan +'" class="label label-success dong">Có hàng</span>';
			}else{
				_trangthai = '<span data-id="'+ _dong.id_dm_hinhthuc_thanhtoan +'" class="label label-danger dong">Hết hàng</span>';
			}
			 aRows.push([
                (i + 1),
				_dong.id_dm_hinhthuc_thanhtoan,
                _dong.ten,
                _dong.mota,
                 _trangthai
            ]);
		}
		tblDanhSach.rows.add(aRows).draw();
	}
	
	
	$(function(){
		DanhSach_phantrang();
		
		Page_init();
		
		// Bắt sự kiện khi ấn nút thêm mới
		$('#btnThemMoi').on('click',function(){
			// Hiển thị cửa sổ popup
			EccDialog.show(
				'Tạo mới danh mục Sản Phẩm', 
				'?app=DmHinhThucThanhToan&view=ChiTiet&layout=popup&id=' + HinhThucThanhToan.id_dm_hinhthuc_thanhtoan,
				'50%', '350');
		});
		
		$('#btnXoa').on('click',function(){
			var _xacnhan = confirm('Bạn có chắc chắn muốn xóa không?');
			if(_xacnhan==true){
				HinhThucThanhToan.Del();
				Page_init();
			}
		});
		
		$('#btnTaiLai').on('click',function(){
			Page_init();
		});
		
		$('#DanhSach').on('click','tr',function(){
			$('#DanhSach tr').attr('class', '');
			var _id = $(this).find(".dong").data('id');
			if(HinhThucThanhToan.id_dm_hinhthuc_thanhtoan == _id){
				HinhThucThanhToan.id_dm_hinhthuc_thanhtoan = 0;
			}else{
				$('#DanhSach tr').attr('class', '');
				HinhThucThanhToan.id_dm_hinhthuc_thanhtoan = _id;
				$(this).attr('class', 'row_selected');
			}
			Action_filter();
		});
		
		$('#btnSua').on('click',function(){
			EccDialog.show(
				'Sửa danh mục sản phẩm', 
				'?app=DmHinhThucThanhToan&view=ChiTiet&layout=popup&id=' + HinhThucThanhToan.id_dm_hinhthuc_thanhtoan, 
				'50%', '350');
		});
	});
</script>