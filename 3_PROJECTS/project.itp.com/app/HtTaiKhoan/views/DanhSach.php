<?php if (!defined('AREA')) {
    die('Access denied');
} ?>
<div class="row" style="margin-top:10px;">
    <h3 class="label-default" style="margin: 0px 10px 10px 10px; padding: 2px; color: #FFF; border-left: 5px #CB9420 solid; font-size: 14px">Quản lý Hệ Thống Tài Khoản</h3>
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
            <div class="panel-heading">Hệ Thống Tài Khoản</div>
            <div class="panel-body">
                <table class="table table-bordered table-stripped" id="DanhSach">
					<thead>
						<tr>
							<th><input type="checkbox" id="chkAll" /></th>
							<th>STT</th>
							<th>Tài khoản</th>
							<th>Họ tên</th>
							<th>Số Điện thoại</th>
							<th>Email</th>
							<th>Trạng thái</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox" id="chk_1" /></td>
							<td>1</td>
							<td>ngocthuy</td>
							<td> nguyễn thu thủy</td>
							<td>09876789</td>
							<td>thuy@gmail.com</td>
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
<script src="app/HtTaiKhoan/js/HtTaiKhoan.js"></script>

<script>
	// Khai báo đối tượng cửa sổ
	var EccDialog = new ECC_DIALOG(Page_init);
	var TaiKhoan = new HtTaiKhoan('?app=HtTaiKhoan');
	    function DanhSach_phantrang() {
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
		TaiKhoan.id_taikhoan=0;
		TaiKhoan.FindAll();
		DanhSach_bind();
		Action_filter();
	}
	
	function Action_filter(){
		if(TaiKhoan.id_taikhoan != 0){
			$('#btnSua').show();
			$('#btnXoa').show();
		}else{
			$('#btnSua').hide();
			$('#btnXoa').hide();
		}
	}
	
	function DanhSach_bind(){
		
		var _html = '';
		for(var i=0; i< TaiKhoan.DanhSach.length;i++){
			var _dong = TaiKhoan.DanhSach[i];
			var _trangthai ='';
			if(_dong.trangthai=='1'){
				_trangthai = '<span class="label label-success">Sử dụng</span>';
			}else {
				_trangthai = '<span class="label label-danger">Khóa</span>';
			}
			
			_html +='<tr data-id="'+ _dong.id_taikhoan +'">';
			_html +='	<td><input type="checkbox" id="chk_1" /></td>';
			_html +='	<td>'+ (i+1) +'</td>';
			_html +='	<td>'+ _dong.taikhoan +'</td>';
			_html +='	<td>'+ _dong.hoten +'</td>';
			_html +='	<td>'+ _dong.sodienthoai +'</td>';
			_html +='	<td>'+ _dong.email +'</td>';
			_html +='	<td>';
			_html += _trangthai;
			_html +='	</td>';
			_html +='</tr>';
		}
		$('#DanhSach > tbody').html(_html);
	}
	
	$(function(){
		DanhSach_phantrang();
		Page_init();
		
		// Bắt sự kiện khi ấn nút thêm mới
		$('#btnThemMoi').on('click',function(){
			// Hiển thị cửa sổ popup
			EccDialog.show(
				'Tạo mới Tài Khoản', 
				'?app=HtTaiKhoan&view=ChiTiet&layout=popup&id=' + TaiKhoan.id_taikhoan, 
				'50%', '310');
		});
		
		$('#btnXoa').on('click',function(){
			var _xacnhan = confirm('Bạn có chắc chắn muốn xóa không?');
			if(_xacnhan==true){
				TaiKhoan.Del();
				Page_init();
			}
		});
		
		$('#btnTaiLai').on('click',function(){
			Page_init();
		});
		
		$('#DanhSach').on('click','tr',function(){
			$('#DanhSach tr').attr('class', '');
			var _id = $(this).data('id');
			if(TaiKhoan.id_taikhoan == _id){
				TaiKhoan.id_taikhoan = 0;
			}else{
				$('#DanhSach tr').attr('class', '');
				TaiKhoan.id_taikhoan = _id;
				$(this).attr('class', 'row_selected');
			}
			Action_filter();
		});
		
		$('#btnSua').on('click',function(){
			EccDialog.show(
				'Sửa Tài Khoản', 
				'?app=HtTaiKhoan&view=ChiTiet&layout=popup&id=' + TaiKhoan.id_taikhoan, 
				'50%', '310');
		});
		
	});

</script>







