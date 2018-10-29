<?php if (!defined('AREA')) { die('Access denied'); } ?>

<form class="row" style="margin-bottom:5px" id="FORM">
    <div class="form-group-sm col-sm-6">
       <label>Cửa hàng sản phẩm <span class="require">(*)</span></label>
	    <select class="form-control" id="id_sanpham" name="id_sanpham">
        </select>
    </div>
	<div class="form-group-sm col-sm-6">
       <label>Cửa hàng đơn hàng <span class="require">(*)</span></label>
	   <select class="form-control" id="id_donhang" name="id_donhang">
        </select>
    </div>
    <div class="form-group-sm col-sm-6">
       <label>Số lượng <span class="require">(*)</span></label>
	   <input type="text" class="form-control" placeholder="số lượng" id="soluong" />
    </div>
	<div class="form-group-sm col-sm-6">
       <label>Đơn giá <span class="require">(*)</span></label>
	   <input type="text" class="form-control" placeholder="Đơn giá" id="dongia" />
    </div>

    <div class="form-group-sm ACTIONS col-sm-12">
        <hr>
        <button type="button" class="btn btn-warning btn-sm" id="btnSave"><i class="glyphicon glyphicon-save"></i> Lưu</button>
    </div>
</form>
<script src="app/ChDonHangSanPham/js/ChDonHangSanPham.js"></script>
<script src="app/ChSanPham/js/ChSanPham.js"></script>
<script src="app/ChDonhang/js/chDonHang.js"></script>
<script>
	
	var DonHangSanPham = new ChDonHangSanPham('?app=ChDonHangSanPham');
	var CuaHangSanPham=new ChSanPham('?app=ChSanPham');
	var CuaHangDonHang=new ChDonHang('?app=ChDonhang');
	
	function ChSanPham_bind(){
		CuaHangSanPham.FindAll();
		var _html='';
		for(var i=0; i< CuaHangSanPham.DanhSach.length; i++){
			var _dong = CuaHangSanPham.DanhSach[i];
			_html +='<option value="'+ _dong.id_sanpham +'">'+ _dong.ten +'</option>';
		}
		$('#id_sanpham').html(_html);
		
	}
	
	function ChDonHang_bind(){
		CuaHangDonHang.FindAll();
		var _html='';
		for(var i=0; i< CuaHangDonHang.DanhSach.length; i++){
			var _dong = CuaHangDonHang.DanhSach[i];
			_html +='<option value="'+ _dong.id_donhang +'">'+ _dong.ma +'</option>';
		}
		$('#id_donhang').html(_html);
		
	}
	
	
	
	function Page_init(){
		DonHangSanPham.id_donhang_sanpham=Util.getParameterByName('id');
		if(DonHangSanPham.id_donhang_sanpham==0 || DonHangSanPham.id_donhang_sanpham==null){
			$('#id_sanpham').val('');
			$('#id_donhang').val('');
			$('#soluong').val('');
			$('#dongia').val('');
		}else
		{
			DonHangSanPham.GetById();
			$('#id_sanpham').val(DonHangSanPham.id_sanpham);
			$('#id_donhang').val(DonHangSanPham.id_donhang);
			$('#soluong').val(DonHangSanPham.soluong);
			$('#dongia').val(DonHangSanPham.dongia);
		}
		ChSanPham_bind();
		ChDonHang_bind();
	}
	
	
	$(function(){
		
		Page_init();
		
		$('#btnSave').on('click',function(){
			DonHangSanPham.id_sanpham = $('#id_sanpham').val();
			DonHangSanPham.id_donhang = $('#id_donhang').val();
			DonHangSanPham.soluong = $('#soluong').val();
			DonHangSanPham.dongia = $('#dongia').val();
			DonHangSanPham.Save();
		})
		
	})

</script>