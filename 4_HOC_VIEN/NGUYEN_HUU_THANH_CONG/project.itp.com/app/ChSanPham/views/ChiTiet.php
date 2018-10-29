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
	
	
	
	$(function(){
		
		$('#btnSave').on('click',function(){
			BaoHanh.ma = $('#ma').val();
			BaoHanh.ten = $('#ten').val();
			BaoHanh.gia_nhap = $('#gia_nhap').val();
			BaoHanh.gia_ban = $('#gia_ban').val();
			BaoHanh.gia_ban = $('#gia_ban').val();
			BaoHanh.gioithieu = $('#gioithieu').val();
			BaoHanh.id_dm_sanpham = $('#id_dm_sanpham').val();
			BaoHanh.id_dm_baohanh = $('#id_dm_baohanh').val();
			BaoHanh.id_dm_doitra = $('#id_dm_doitra').val();
			BaoHanh.id_dm_giaohang = $('#id_dm_giaohang').val();
			BaoHanh.id_dm_tragop = $('#id_dm_tragop').val();
			BaoHanh.id_dm_hang_sansuat = $('#id_dm_hang_sansuat').val();
			BaoHanh.trangthai = $('#trangthai').val();
			BaoHanh.Save();
		})
		
	})

</script>