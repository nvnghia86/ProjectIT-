<?php if (!defined('AREA')) {
    die('Access denied');
} ?>

<form class="row" style="margin-bottom:5px" id="FORM">
    <div class="form-group-sm col-sm-6">
       <label>Mã sản phẩm <span class="require">(*)</span></label>
	   <input type="text" class="form-control" placeholder="Mã sản phẩm"  />
    </div>
	<div class="form-group-sm col-sm-6">
       <label>Tên sản phẩm <span class="require">(*)</span></label>
	   <input type="text" class="form-control" placeholder="Tên sản phẩm"  />
    </div>
	<div class="form-group-sm col-sm-6">
       <label>Giá Nhập <span class="require">(*)</span></label>
	   <input type="text" class="form-control" placeholder="Giá Nhập"  />
    </div>
	<div class="form-group-sm col-sm-6">
       <label>Giá Bán <span class="require">(*)</span></label>
	   <input type="text" class="form-control" placeholder="Giá Bán"  />
    </div>
	<div class="form-group-sm col-sm-6">
       <label>Giới Thiệu <span class="require">(*)</span></label>
	   <textarea class="form-control" rows="3"></textarea>
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
        <select class="form-control" id="sel_TRANG_THAI" name="trang_thai">
            <option value="1">Có Hàng</option>
            <option value="0">Hết Hàng</option>
        </select>
    </div>

    <div class="form-group-sm ACTIONS col-sm-12">
        <hr>
        <button type="button" class="btn btn-warning btn-sm" id="btnSave"><i class="glyphicon glyphicon-save"></i> Lưu</button>
    </div>
</form>
<script src="app/ChSanPham/js/ChSanPham.js"></script>
<script src="app/DmSanPham/js/DmSanPham.js"></script>
<script src="app/DmBaoHanh/js/DmBaoHanh.js"></script>
<script src="app/DmTraGop/js/DmTraGop.js"></script>
<script src="app/DmGiaoHang/js/DmGiaoHang.js"></script>
<script src="app/DmHangSanXuat/js/DmHangSanXuat.js"></script>
<script>
	
	var SanPham = new ChSanPham('?app=ChSanPham');
	var DMSP = new DmSanPham('?app=DmSanPham');
	var DMBH = new DmBaoHanh('?app=DmBaoHanh');
	var DMGH = new DmGiaoHang('?app=DmGiaoHang');
	var DMTG = new DmTraGop('?app=DmTraGop');
	var DMHSX = new DmHangSanXuat('?app=DmHangSanXuat');
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
	
	function Page_init(){
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
			$('#trangthai').val(SanPham.trangthai);DmHangSanXuat
		}
	
	
		DmSanPham_bind();
		DmBaoHanh_bind();
		DmGiaoHang_bind();
		DmTraGop_bind();
		DmHangSanXuat_bind();
	}
	
	
	$(function(){
		
		Page_init();
		
		$('#btnSave').on('click',function(){
			SanPham.ma = $('#ma').val();
			SanPham.ten = $('#ten').val();
			SanPham.gia_nhap = $('#gia_nhap').val();
			SanPham.gia_ban = $('#gia_ban').val();
			SanPham.gioithieu = $('#gioithieu').val();
			SanPham.trangthai = $('#trangthai').val();
			SanPham.Save();
		})
		
	})

</script>