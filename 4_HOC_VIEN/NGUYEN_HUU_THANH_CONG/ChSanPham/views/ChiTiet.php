<?php if (!defined('AREA')) { die('Access denied'); } ?>

<form class="row" style="margin-bottom:5px" id="FORM">
    <div class="form-group-sm col-sm-6">
       <label>Tên bảo hành <span class="require">(*)</span></label>
	   <input type="text" id="ten" class="form-control" placeholder="Tên bảo hành"  />
    </div>
	<div class="form-group-sm col-sm-6">
       <label>Mô tả <span class="require">(*)</span></label>
	   <textarea id="mota" class="form-control" rows="3"></textarea>
    </div>
    
    <div class="form-group-sm col-sm-4">
        <label>Trạng thái </label>
        <select class="form-control" id="trangthai">
            <option value="1">Kích hoạt</option>
            <option value="0">Khóa</option>
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
			BaoHanh.ma = $('#ma').val();
			BaoHanh.ten = $('#ten').val();
			BaoHanh.gia_nhap = $('#gia_nhap').val();
			BaoHanh.gia_ban = $('#gia_ban').val();
			BaoHanh.gioithieu = $('#gioithieu').val();
			BaoHanh.trangthai = $('#trangthai').val();
			BaoHanh.Save();
		})
		
	})

</script>










