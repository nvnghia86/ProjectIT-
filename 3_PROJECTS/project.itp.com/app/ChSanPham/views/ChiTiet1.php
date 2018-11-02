<?php if (!defined('AREA')) {
    die('Access denied');
} ?>

<form class="row" style="margin-bottom:5px" id="FORM">
<ul class="nav nav-tabs" role="tablist">
	<li role="presentation" class="active"><a href="#tab1" aria-controls="thuoc" role="tab" data-toggle="tab" aria-expanded="false">Thông tin sản phẩm</a></li>
	<li role="presentation"><a href="#tab2" aria-controls="thuoc" role="tab" data-toggle="tab" aria-expanded="false">Hình ảnh sản phẩm</a></li>
</ul>
<div class="tab-content" style="border: 1px solid #ddd;padding:5px;">
	<div role="tabpanel" class="tab-pane active" id="tab1">
		<div class="form-group-sm col-sm-6">
		   <label>Mã sản phẩm <span class="require">(*)</span></label>
		   <input type="text" id="ma" class="form-control" placeholder="Mã sản phẩm"  />
		</div>
		<div class="form-group-sm col-sm-6">
		   <label>Tên sản phẩm <span class="require">(*)</span></label>
		   <input type="text" id="ten" class="form-control" placeholder="Tên sản phẩm"  />
		</div>
		<div class="form-group-sm col-sm-6">
		   <label>Giá Nhập <span class="require">(*)</span></label>
		   <input type="text" id="gia_nhap" class="form-control" placeholder="Giá Nhập"  />
		</div>
		<div class="form-group-sm col-sm-6">
		   <label>Giá Bán <span class="require">(*)</span></label>
		   <input type="text" id="gia_ban" class="form-control" placeholder="Giá Bán"  />
		</div>
		<div class="form-group-sm col-sm-6">
		   <label>Giới Thiệu <span class="require">(*)</span></label>
		   <textarea class="form-control" id="gioithieu" rows="3"></textarea>
		</div>
		<div class="form-group-sm col-sm-6">
			<label>Danh mục sản phẩm </label>
			<select class="form-control" id="id_dm_sanpham" name="id_dm_sanpham">
			</select>
		</div>
		<div class="form-group-sm col-sm-6">
			<label>Chế độ bảo hành </label>
			<select class="form-control" id="id_dm_baohanh" name="id_dm_baohanh">
			</select>
		</div>
		<div class="form-group-sm col-sm-6">
			<label>Đổi trả </label>
			<select class="form-control" id="id_dm_doitra" name="id_dm_doitra">
			</select>
		</div>
		<div class="form-group-sm col-sm-6">
			<label>Phương thức giao hàng </label>
			<select class="form-control" id="id_dm_giaohang" name="id_dm_giaohang">
			</select>
		</div>
		<div class="form-group-sm col-sm-6">
			<label>Phương thức trả góp </label>
			<select class="form-control" id="id_dm_tragop" name="id_dm_tragop">
			</select>
		</div>
		<div class="form-group-sm col-sm-6">
			<label>Hãng sản xuất </label>
			<select class="form-control" id="id_dm_hang_sanxuat" name="id_dm_hang_sanxuat">
			</select>
		</div>
		<div class="form-group-sm col-sm-6">
			<label>Trạng thái </label>
			<select class="form-control" id="trangthai" name="trangthai">
				<option value="1">Có Hàng</option>
				<option value="0">Hết Hàng</option>
			</select>
		</div>
	</div>

	<div role="tabpanel" class="tab-pane" id="tab2">
		<div role="tabpanel" class="tab-pane" id="tab2">
			<div class="input-group input-group-xs">
                <span class="input-group-addon"><a href="#" id="lnkDownload1" target="_blank"><i class="icon-file-download2"></i></a></span>
                <input type="text" class="form-control input-xs" id="txtFileDinhKem1" readonly="readonly" placeholder="Chọn file 1..." />
                <span class="input-group-addon">
                    <a href="javascript:openFileDinhKem(1)">
                        <i class="icon-folder-upload2"></i>
                    </a>
                </span>
            </div>
			<button id="btnAddHinhAnh" type="button" class="btn btn-success"> <i class="glyphicon glyphicon-plus"></i></button>
			</div>
			<table id="DanhSach" class="table table-bordered table-stripped">
				<table class="table table-bordered table-stripped" id="DanhSach">
					<thead>
						<tr>
							<th>STT</th>
							<th>Hình ảnh</th>
							<th>Tên</th>
							<th>URL</th>
							<th>Xóa</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>1</th>
							<th>
								<img width="100" height="60" src="media/upload_cahd/HINH_ANH/SAN_PHAM/samsung-galaxy-a7-2018-128gb-xanh-duong-4-org.jpg" />
							</th>
							<th>Hinhanh1.png</th>
							<th>upload/sanpham/hinhanh1.png</th>
							<th>
								<button type="button" class="btn btn-danger btn-sm"><i class="glyphicon glyphicon-trash"></i> </button>
							</th>
						</tr>
					</tbody>
				</table>
			</table>
		
		</div>
	</div>
</div>    

<div class="form-group-sm ACTIONS col-sm-12">
	<hr>
	<button type="button" class="btn btn-warning btn-sm" id="btnSave"><i class="glyphicon glyphicon-save"></i> Lưu</button>
</div>
</form>
<!-- Roxy file -->
<div id="roxyCustomPanel" style="display: none;">
	<iframe id="CvFileMan" src="/Libs/filemanager/index.html?integration=custom&txtFieldId=txtFileDinhKem" style="width: 100%; height: 100%" frameborder="0"></iframe>
</div>
<script src="app/ChSanPham/js/ChSanPham.js"></script>
<script src="app/DmSanPham/js/DmSanPham.js"></script>
<script src="app/DmBaoHanh/js/DmBaoHanh.js"></script>
<script src="app/DmTraGop/js/DmTraGop.js"></script>
<script src="app/DmGiaoHang/js/DmGiaoHang.js"></script>
<script src="app/DmHangSanXuat/js/DmHangSanXuat.js"></script>
<script src="app/DmDoiTra/js/DmDoiTra.js"></script>
<script>
	
	var SanPham = new ChSanPham('?app=ChSanPham');
	var DMSP = new DmSanPham('?app=DmSanPham');
	var DMBH = new DmBaoHanh('?app=DmBaoHanh');
	var DMGH = new DmGiaoHang('?app=DmGiaoHang');
	var DMTG = new DmTraGop('?app=DmTraGop');
	var DMHSX = new DmHangSanXuat('?app=DmHangSanXuat');
	var DoiTra = new DmDoiTra('?app=DmDoiTra');
	
	function DmSanPham_bind(){
		DMSP.FindAll();
		var _html='';
		for(var i=0; i< DMSP.DanhSach.length; i++){
			var _dong = DMSP.DanhSach[i];
			_html +='<option value="'+ _dong.id_dm_sanpham +'">'+ _dong.ten +'</option>';
		}
		$('#id_dm_sanpham').html(_html);
	}
	
	function DmBaoHanh_bind(){
		DMBH.FindAll();
		var _html='';
		for(var i=0; i< DMBH.DanhSach.length; i++){
			var _dong = DMBH.DanhSach[i];
			_html +='<option value="'+ _dong.id_dm_baohanh +'">'+ _dong.ten +'</option>';
		}
		$('#id_dm_baohanh').html(_html);
	}
	
	function DmGiaoHang_bind(){
		DMGH.FindAll();
		var _html='';
		for(var i=0; i< DMGH.DanhSach.length; i++){
			var _dong = DMGH.DanhSach[i];
			_html +='<option value="'+ _dong.id_dm_giaohang +'">'+ _dong.ten +'</option>';
		}
		$('#id_dm_giaohang').html(_html);
	}
	
	function DmTraGop_bind(){
		DMTG.FindAll();
		var _html='';
		for(var i=0; i< DMTG.DanhSach.length; i++){
			var _dong = DMTG.DanhSach[i];
			_html +='<option value="'+ _dong.id_dm_tragop +'">'+ _dong.ten +'</option>';
		}
		$('#id_dm_tragop').html(_html);
	}
	
	function DmHangSanXuat_bind(){
		DMHSX.FindAll();
		var _html='';
		for(var i=0; i< DMHSX.DanhSach.length; i++){
			var _dong = DMHSX.DanhSach[i];
			_html +='<option value="'+ _dong.id_dm_hang_sanxuat +'">'+ _dong.ten +'</option>';
		}
		$('#id_dm_hang_sanxuat').html(_html);
	}
	
	function DmDoiTra_bind(){
		DoiTra.FindAll();
		var _html='';
		for(var i=0; i< DoiTra.DanhSach.length; i++){
			var _dong = DoiTra.DanhSach[i];
			_html +='<option value="'+ _dong.id_dm_doitra +'">'+ _dong.ten +'</option>';
		}
		$('#id_dm_doitra').html(_html);
	}
	
	function Page_init(){
		
		DmSanPham_bind();
		DmBaoHanh_bind();
		DmGiaoHang_bind();
		DmTraGop_bind();
		DmHangSanXuat_bind();
		DmDoiTra_bind();
		
		SanPham.id_sanpham = Util.getParameterByName('id');
		if(SanPham.id_sanpham==0 || SanPham.id_sanpham==null){
			$('#ma').val('');
			$('#ten').val('');
			$('#gia_nhap').val('');
			$('#gia_ban').val('');
			$('#gioithieu').val('');
			$('#trangthai').val('1');
		}else{
			SanPham.GetById();
			$('#ma').val(SanPham.ma);
			$('#ten').val(SanPham.ten);
			$('#gia_nhap').val(SanPham.gia_nhap);
			$('#gia_ban').val(SanPham.gia_ban);
			$('#gioithieu').val(SanPham.gioithieu);
			$('#id_dm_sanpham').val(SanPham.id_dm_sanpham);
			$('#id_dm_baohanh').val(SanPham.id_dm_baohanh);
			$('#id_dm_doitra').val(SanPham.id_dm_doitra);
			$('#id_dm_giaohang').val(SanPham.id_dm_giaohang);
			$('#id_dm_tragop').val(SanPham.id_dm_tragop);
			$('#id_dm_hang_sanxuat').val(SanPham.id_dm_hang_sanxuat);
			$('#trangthai').val(SanPham.trangthai);
		}
	
	
		
	}
	
	
	$(function(){
		
		//Page_init();
		
		$('#btnSave').on('click',function(){
			SanPham.ma = $('#ma').val();
			SanPham.ten = $('#ten').val();
			SanPham.gia_nhap = $('#gia_nhap').val();
			SanPham.gia_ban = $('#gia_ban').val();
			SanPham.gioithieu = $('#gioithieu').val();
			SanPham.id_dm_sanpham = $('#id_dm_sanpham').val();
			SanPham.id_dm_baohanh = $('#id_dm_baohanh').val();
			SanPham.id_dm_doitra = $('#id_dm_doitra').val();
			SanPham.id_dm_giaohang = $('#id_dm_giaohang').val();
			SanPham.id_dm_tragop = $('#id_dm_tragop').val();
			SanPham.id_dm_hang_sanxuat = $('#id_dm_hang_sanxuat').val();
			SanPham.trangthai = $('#trangthai').val();
			SanPham.Save();
		})
		
	})

</script>