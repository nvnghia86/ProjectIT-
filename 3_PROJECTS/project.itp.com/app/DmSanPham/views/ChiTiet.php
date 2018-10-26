<?php if (!defined('AREA')) {
    die('Access denied');
} ?>
<form class="row" style="margin-bottom:5px" id="FORM">
    <div class="form-group-sm col-sm-6">
       <label>Tên sản phẩm <span class="require">(*)</span></label>
	   <input type="text" class="form-control" placeholder="Tên sản phẩm"  />
    </div>
    <div class="form-group-sm col-sm-6">
       <label>id dm sảm phẩm cha <span class="require">(*)</span></label>
	   <input type="text" class="form-control" placeholder="id_dm_sanpham_cha"  />
    </div>
	<div class="form-group-sm col-sm-6">
       <label>Mô tả <span class="require">(*)</span></label>
	   <textarea class="form-control" rows="3"></textarea>
    </div>
    
    <div class="form-group-sm col-sm-4">
        <label>Trạng thái </label>
        <select class="form-control" id="trangthai">
            <option value="1">1</option>
            <option value="0">0</option>
        </select>
    </div>

    <div class="form-group-sm ACTIONS col-sm-12">
        <hr>
        <button type="button" class="btn btn-warning btn-sm" id="btnSave"><i class="glyphicon glyphicon-save"></i> Lưu</button>
    </div>
</form>
<script src="app/DmSanPham/js/DmSanPham.js"></script>
<script>
    
    var SanPham = new DmSanPham('?app=DmSanPham');
    
    
    
    $(function(){
        
        $('#btnSave').on('click',function(){
            SanPham.ten = $('#ten').val();
            SanPham.mota = $('#mota').val();
            SanPham.trangthai = $('#trangthai').val();
            SanPham.Save();
        })
        
    })

</script>