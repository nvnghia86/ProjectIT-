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
                <table class="table table-bordered table-stripped" id="DanhSach">
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
							<th>Trạng Thái</th>
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
							<td>1</td>
						</tr>
					</tbody>
				</table>
            </div>
        </div>
    </div>
</div>
<script src="app/ChDonhang/js/chDonHang.js"></script>


<script>
  
// Khai báo đối tượng cửa sổ
	var EccDialog = new ECC_DIALOG();
	var Donhang = new ChDonHang('?app=ChDonhang');
	
	function Page_init(){
		Donhang.FindAll();
		DanhSach_bind();
	}
function DanhSach_bind(){
		// Trang Thai :
		// 1: Khoi Tao
		// 2: Đã Duyệt
		// 3: Đang Giao
		// 4: Đã Thanh Toán
		// 5: Đã Hủy
		var _html = '';
		for(var i=0; i< Donhang.DanhSach.length;i++){
			var _dong = Donhang.DanhSach[i];
			var _trangthai='';
			switch (_dong.trangthai) 
			{
			case "1":
				_trangthai = "Đơn hàng đã khởi tạo";
				break;
			case "2":
				_trangthai =  "Đơn hàng đã duyệt!";
				break;
			case "3":
				_trangthai =  "Đơn hàng đang giao";
				break;
			case "4":
				_trangthai =  "Đơn hàng đã thanh toán";
				break;
			case "5":
				_trangthai =  "Đơn hàng đã Hủy bỏ";
				break;
			default:
				_trangthai =  "Không xác định";
			}
			_html += '<tr data-id="'+ _dong.id_donhang +'">';
			_html += '	<td><input type="checkbox" id="chk_1" /></td>';
			_html += '	<td>'+ (i+1) +'</td>';
			_html += '	<td>'+ (i+1) +'</td>';
			_html += '	<td>'+ _dong.ngay_tao +'</td>';
			_html += '	<td>'+ _dong.ngay_duyet +'</td>';
			_html += '	<td>'+ _dong.ngay_giao +'</td>';
			_html += '	<td>'+ _dong.ngay_nhan +'</td>';
			_html += '	<td>'+ _dong.ten_nguoinhan +'</td>';
			_html += '	<td>'+ _dong.sdt_nguoinhan +'</td>';
			_html += '	<td> '+ _dong.diachi_nguoinhan +'</td>';
			_html += '	<td>'+ _trangthai +'</td>';
			_html += '</tr>';
		}
		
		$('#DanhSach > tbody').html(_html);
}







$(function() {
	
	Page_init();
	
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
   