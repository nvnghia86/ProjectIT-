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
        <label>Id_Dm_SanPham </label>
        <select class="form-control" id="Id_Dm_SanPham" name="Id_Dm_SanPham">
        </select>
    </div>
	<div class="form-group-sm col-sm-6">
        <label>Id_Dm_BaoHanh </label>
        <select class="form-control" id="Id_Dm_BaoHanh" name="Id_Dm_BaoHanh">
        </select>
    </div>
	<div class="form-group-sm col-sm-6">
        <label>Id_Dm_DoiTra </label>
        <select class="form-control" id="Id_Dm_DoiTra" name="Id_Dm_DoiTra">
        </select>
    </div>
	<div class="form-group-sm col-sm-6">
        <label>Id_Dm_GiaoHang </label>
        <select class="form-control" id="Id_Dm_GiaoHang" name="Id_Dm_GiaoHang">
        </select>
    </div>
	<div class="form-group-sm col-sm-6">
        <label>Id_Dm_TraGop </label>
        <select class="form-control" id="Id_Dm_TraGop" name="Id_Dm_TraGop">
        </select>
    </div>
	<div class="form-group-sm col-sm-6">
        <label>Id_Dm_Hang_SanSuat </label>
        <select class="form-control" id="Id_Dm_Hang_SanSuat" name="Id_Dm_Hang_SanSuat">
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
<script>
	
	var SanPham = new ChSanPham('?app=ChSanPham');
	
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
			$('#trangthai').val(SanPham.trangthai);
		}
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