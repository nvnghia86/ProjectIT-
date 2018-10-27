<?php if (!defined('AREA')) {
    die('Access denied');
} ?>
<div class="row" style="margin-top:10px;">
    <h3 class="label-default" style="margin: 0px 10px 10px 10px; padding: 2px; color: #FFF; border-left: 5px #CB9420 solid; font-size: 14px">Quản lý đơn hàng sản phẩm</h3>
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
            <div class="panel-heading">Danh sách đơn hàng sản phẩm</div>
            <div class="panel-body">
                <table class="table table-bordered table-stripped" id="DanhSach">
					<thead>
						<tr>
							<th><input type="checkbox" id="chkAll" /></th>
							<th>STT</th>
							<th>id_sanpham</th>
							<th>id_donhang</th>
							<th>Số lượng</th>
							<th>Đơn giá</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox" id="chk_1" /></td>
							<td>1</td>
							<td>6</td>
							<td>1</td>
							<td>
								200
							</td>
							<td>10000000</td>
						</tr>
					</tbody>
				</table>
            </div>
        </div>
    </div>
</div>
<script src="app/ChDonHangSanPham/js/ChDonHangSanPham.js"></script>
<script>
	// Khai báo đối tượng cửa sổ
	var EccDialog = new ECC_DIALOG(Page_init);
	var DonHangSanPham = new ChDonHangSanPham('?app=ChDonHangSanPham');
	
	
function Page_init(){
		DonHangSanPham.FindAll();
		DanhSach_bind();
		Action_filter();
	}
	function Action_filter(){
		if(DonHangSanPham.id_donhang_sanpham != 0){
			$('#btnSua').show();
			$('#btnXoa').show();
		}else{
			$('#btnSua').hide();
			$('#btnXoa').hide();
		}
	}
	
	function DanhSach_bind(){
		
		var _html = '';
		for(var i=0; i< DonHangSanPham.DanhSach.length;i++){
			var _dong = DonHangSanPham.DanhSach[i];
			_html +='<tr data-id="'+ _dong.id_donhang_sanpham +'">';
			_html +='	<td><input type="checkbox" id="chk_1" /></td>';
			_html +='	<td>'+ (i+1) +'</td>';
			_html +='	<td>'+ _dong.id_sanpham +'</td>';
			_html +='	<td>'+ _dong.id_donhang +'</td>';
			_html +='	<td>'+ _dong.soluong +'</td>';
			_html +='	<td>'+ _dong.dongia +'</td>';
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
				'Tạo mới đơn hàng sản phẩm', 

				//'?app=ChDonHangSanPham&view=ChiTiet&layout=popup', 
				//'90%', '310');

				'?app=ChDonHangSanPham&view=ChiTiet&layout=popup&id=' + DonHangSanPham.id_donhang_sanpham, 
				'50%', '310');
		});
		
		$('#btnXoa').on('click',function(){
			var _xacnhan = confirm('Bạn có chắc chắn muốn xóa không?');
			if(_xacnhan==true){
				DonHangSanPham.Del();
				Page_init();
			}
		});
		
		$('#btnTaiLai').on('click',function(){
			Page_init();
		});
		
		$('#DanhSach').on('click','tr',function(){
			$('#DanhSach tr').attr('class', '');
			var _id = $(this).data('id');
			if(DonHangSanPham.id_donhang_sanpham == _id){
				DonHangSanPham.id_donhang_sanpham = 0;
			}else{
				$('#DanhSach tr').attr('class', '');
				DonHangSanPham.id_donhang_sanpham = _id;
				$(this).attr('class', 'row_selected');
			}
			Action_filter();
		});
		
	});

</script>

