<?php if (!defined('AREA')) {
    die('Access denied');
} ?>
<div class="row" style="margin-top:10px;">
    <h3 class="label-default" style="margin: 0px 10px 10px 10px; padding: 2px; color: #FFF; border-left: 5px #CB9420 solid; font-size: 14px">Quản lý danh mục sản phẩm</h3>
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
							<th>id_dm_sanpham_cha</th>
							<th>Mô tả</th>
							<th>Trạng thái</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox" id="chk_1" /></td>
							<td>1</td>
							<td>Diện thoại</td>
							<td>4</td>
							<td>Diện thoại di động</td>
							<td>
								<span class="label label-success">1</span>
							</td>
						</tr>
					</tbody>
				</table>
            </div>
        </div>
    </div>
</div>
<script src="app/DmSanPham/js/DmSanPham.js"></script>
<script>
	// Khai báo đối tượng cửa sổ
	var EccDialog = new ECC_DIALOG(Page_init);
	var SanPham = new DmSanPham('?app=DmSanPham');
	
	function Page_init(){
		SanPham.id_dm_sanpham=0;
		SanPham.FindAll();
		DanhSach_bind();
		Action_filter();
	}
	function Action_filter(){
		if(SanPham.id_dm_sanpham != 0){
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
				_trangthai = '<span class="label label-success">Sử dụng</span>';
			}else{
				_trangthai = '<span class="label label-danger">Khóa</span>';
			}
			
			_html +='<tr data-id="'+ _dong.id_dm_sanpham+'">';
			_html +='	<td><input type="checkbox" id="chk_1" /></td>';
			_html +='	<td>'+ (i+1) +'</td>';
			_html +='	<td>'+ _dong.ten +'</td>';
			_html +='	<td>'+ _dong.id_dm_sanpham_cha +'</td>';
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
		// Bắt sự kiện khi ấn nút thêm mới
		$('#btnThemMoi').on('click',function(){
			// Hiển thị cửa sổ popup
			EccDialog.show(
				'Tạo mới danh mục sản phẩm', 
				'?app=DmSanPham&view=ChiTiet&layout=popup&id=' + SanPham.id_dm_sanpham, 
				'50%', '360');
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
			if(SanPham.id_dm_sanpham == _id){
				SanPham.id_dm_sanpham = 0;
			}else{
				$('#DanhSach tr').attr('class', '');
				SanPham.id_dm_sanpham = _id;
				$(this).attr('class', 'row_selected');
			}
			Action_filter();
		});
		$('#btnSua').on('click',function(){
			EccDialog.show(
				'Sửa danh mục sản phẩm', 
				'?app=DmSanPham&view=ChiTiet&layout=popup&id=' + SanPham.id_dm_sanpham, 
				'50%', '310');
		});
	});

</script>