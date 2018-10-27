<?php if (!defined('AREA')) { die('Access denied'); } ?>

<form class="row" style="margin-bottom:5px" id="FORM">
    <div class="form-group-sm col-sm-6">
       <label>id_sanpham <span class="require">(*)</span></label>
	   <input type="text" class="form-control" placeholder="id_sanpham" id="id_sanpham" />
    </div>
	<div class="form-group-sm col-sm-6">
       <label>id_donhang <span class="require">(*)</span></label>
	  <input type="text" class="form-control" placeholder="id_donhang" id="id_donhang" />
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
<script>
	
	var DonHangSanPham = new ChDonHangSanPham('?app=ChDonHangSanPham');
	
	
	
	$(function(){
		
		$('#btnSave').on('click',function(){
			DonHangSanPham.id_sanpham = $('#id_sanpham').val();
			DonHangSanPham.id_donhang = $('#id_donhang').val();
			DonHangSanPham.soluong = $('#soluong').val();
			DonHangSanPham.dongia = $('#dongia').val();
			DonHangSanPham.Save();
		})
		
	})

</script>