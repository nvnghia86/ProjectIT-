<?php if (!defined('AREA')) {
    die('Access denied');
} ?>
<div class="row" style="margin-top:10px;">
    <h3 class="label-default" style="margin: 0px 10px 10px 10px; padding: 2px; color: #FFF; border-left: 5px #CB9420 solid; font-size: 14px">Quản lý cửa hàng sản phảm hình ảnh</h3>
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
            <div class="panel-heading">Danh sách sản phẩm hình ảnh</div>
            <div class="panel-body">
                <table class="table table-bordered table-stripped" id="DanhSach">
					<thead>
						<tr>
							<th><input type="checkbox" id="chkAll" /></th>
							<th>STT</th>
							<th>Id sản phẩm hình ảnh</th>
							<th>Id sản phẩm</th>
							<th>Id hình ảnh</th>
							<th>Loại</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox" id="chk_1" /></td>
							<td>1</td>
							<td>10</td>
							<td>9</td>
							<td>8</td>
							<td>1</td>
						</tr>
					</tbody>
				</table>
            </div>
        </div>
    </div>
</div>
<script src="app/ChSanPhamHinhAnh/js/ChSanPhamHinhAnh.js"></script>
<script>
	// Khai báo đối tượng cửa sổ
	var EccDialog = new ECC_DIALOG(Page_init);
	var SanPham = new ChSanPhamHinhAnh('?app=ChSanPhamHinhAnh');
	
	function Page_init(){
		SanPham.id_sanpham_hinhanh=0;
		SanPham.FindAll();
		DanhSach_bind();
		Action_filter();
	}
	
	function Action_filter(){
		if(SanPham.id_sanpham_hinhanh != 0){
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
			
			
			_html +='<tr data-id="'+ _dong.id_sanpham_hinhanh +'">';
			_html +='<tr data-id="'+ _dong.id_sanpham +'">';
			_html +='<tr data-id="'+ _dong.id_hinhanh +'">';
			_html +='	<td><input type="checkbox" id="chk_1" /></td>';
			_html +='	<td>'+ (i+1) +'</td>';
			_html +='	<td>'+ (i+1) +'</td>';
			_html +='	<td>'+ (i+1) +'</td>';
			_html +='	<td>'+ _dong.loai +'</td>';
			_html +='	<td>';
			
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
				'Tạo mới cửa hàng sản phẩm hình ảnh', 
				'?app=ChSanPhamHinhAnh&view=ChiTiet&layout=popup&id=' + SanPham.id_sanpham_hinhanh, 
				'50%', '310');
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
			if(SanPham.id_sanpham_hinhanh == _id){
				SanPham.id_sanpham_hinhanh = 0;
			}else{
				$('#DanhSach tr').attr('class', '');
				SanPham.id_sanpham_hinhanh = _id;
				$(this).attr('class', 'row_selected');
			}
			Action_filter();
		});
		$('#btnSua').on('click',function(){
			EccDialog.show(
				'Sửa cửa hàng sản phẩm hình ảnh', 
				'?app=ChSanPhamHinhAnh&view=ChiTiet&layout=popup&id=' + SanPham.id_sanpham_hinhanh, 
				'50%', '310');
		});
		
	});

</script>







