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
		<i class="glyphicon glyphicon-plus"></i> Thêm mới1</button>
		<button type="button" class="btn btn-warning btn-xs" id="btnSua">
		<i class="glyphicon glyphicon-edit"></i> Sửa1</button>
		<button type="button" class="btn btn-danger btn-xs" id="btnXoa">
			<i class="glyphicon glyphicon-trash"></i> Xóa1
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
							<th>Id_SảnPhẩm</th>
							<th>Mã</th>
							<th>Tên</th>
							<th>Giá_Nhập</th>
							<th>Giá_Bán</th>
							<th>GiớiThiệu</th>
							<th>Trạng thái</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox" id="chk_1" /></td>
							<td>1</td>
							<td>001</td>
							<td>Iphone XS</td>
							<td>20000000</td>
							<td>25000000</td>
							<td>Iphone đời mới 2018</td>
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
<script src="app/ChSanPham/js/ChSanPham.js"></script>
<script>
	var EccDialog = new ECC_DIALOG(Page_init);
	var SanPham = new ChSanPham('?app=ChSanPham');
	
	function Page_init(){
		SanPham.FindAll();
		DanhSach_bind();
		Action_filter();
	}
	
	function Action_filter(){
		if(SanPham.id_ch_sanpham != 0){
			$('#btnSua').show();
			$('#btnXoa').show();
		}else{
			$('#btnSua').hide();
			$('#btnXoa').hide();
		}
	}
	
	function DanhSach_bind(){
		
		var _html = '';
		for(var i=0; i< SanPham.DanhSach.length;i++){
			var _dong = SanPham.DanhSach[i];
			
			var _trangthai ='';
			if(_dong.trangthai=='1'){
				_trangthai = '<span class="label label-success">Có hàng</span>';
			}else{
				_trangthai = '<span class="label label-danger">Hết hàng</span>';
			}
			
			_html +='<tr data-id="'+ _dong.id_ch_sanpham +'">';
			_html +='	<td><input type="checkbox" id="chk_1" /></td>';
			_html +='	<td>'+ (i+1) +'</td>';
			_html +='	<td>'+ _dong.ma +'</td>';
			_html +='	<td>'+ _dong.ten +'</td>';
			_html +='	<td>'+ _dong.gia_nhap +'</td>';
			_html +='	<td>'+ _dong.gia_ban +'</td>';
			_html +='	<td>'+ _dong.gioithieu +'</td>';
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
				'Tạo mới danh mục bảo hành', 
<<<<<<< HEAD
				'?app=ChSanPham&view=ChiTiet&layout=popup', 
				'90%', '500');
=======
				'?app=ChSanPham&view=ChiTiet&layout=popup&id=' + SanPham.id_ch_sanpham, 
				'90%', '500');
>>>>>>> 13846127e4df4995a537d2052b32b4604fb5d88a
		});
		
		$('#btnXoa').on('click',function(){
			var _xacnhan = confirm('Bạn có chắc chắn muốn xóa không?');
			if(_xacnhan==true){
				SanPham.Del();
				Page_init();
			}
		});
		
		$('#btnTaiLai').on('click',function(){
			Page_init();
		});
		
		$('#DanhSach').on('click','tr',function(){
			$('#DanhSach tr').attr('class', '');
			var _id = $(this).data('id');
			if(SanPham.id_ch_sanpham == _id){
				SanPham.id_ch_sanpham = 0;
			}else{
				$('#DanhSach tr').attr('class', '');
				SanPham.id_ch_sanpham = _id;
				$(this).attr('class', 'row_selected');
			}
			Action_filter();
		});
		
	});
</script>