<?php if (!defined('AREA')) { die('Access denied'); } ?>

<form class="row" style="margin-bottom:5px" id="FORM">
    <div class="form-group-sm col-sm-6">
       <label>Id sản phẩm hình ảnh <span class="require">(*)</span></label>
	   <input type="text" id="ten" class="form-control" placeholder="Id sản phẩm hình ảnh"  />
    </div>
	<div class="form-group-sm col-sm-6">
       <label>Id sản phẩm <span class="require">(*)</span></label>
	   <textarea id="id_sanpham_hinhanh" class="form-control" rows="3"></textarea>
    </div>
	<div class="form-group-sm col-sm-6">
       <label>Id hình ảnh<span class="require">(*)</span></label>
	   <textarea id="id_hinhanh" class="form-control" rows="3"></textarea>
    </div>
	<div class="form-group-sm col-sm-6">
       <label>Loại <span class="require">(*)</span></label>
	   <textarea id="loai" class="form-control" rows="3"></textarea>
    </div>
    <div class="form-group-sm ACTIONS col-sm-12">
        <hr>
        <button type="button" class="btn btn-warning btn-sm" id="btnSave"><i class="glyphicon glyphicon-save"></i> Lưu</button>
    </div>
</form>
<script src="app/ChSanPhamHinhAnh/js/ChSanPhamHinhAnh.js"></script>
<script>
	
	var SanPham = new ChSanPhamHinhAnh('?app=ChSanPhamHinhAnh');
	
	function Page_init(){
		SanPham.id_sanpham_hinhanh = Util.getParameterByName('id');
		SanPham.id_sanpham = Util.getParameterByName('id');
		SanPham.id_hinhanh = Util.getParameterByName('id');
		if(SanPham.id_sanpham_hinhanh==0 || SanPham.id_sanpham_hinhanh==null
		&& SanPham.id_sanpham==0 || SanPham.id_sanpham==null
		&& SanPham.id_hinhanh==0 || SanPham.id_hinhanh==null){
			
			$('#loai').val('');
			
		}else{
			SanPham.GetById();
			$('#loai').val(SanPham.loai);
		
		}
	}
	
	
	
	
	
	$(function(){
		
		Page_init();
		
		$('#btnSave').on('click',function(){
			SanPham.loai = $('#loai').val();	
			SanPham.Save();
		})
		
	})

	
	
		


</script>










