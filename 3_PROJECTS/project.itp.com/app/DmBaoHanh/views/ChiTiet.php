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
<script src="app/DmBaoHanh/js/DmBaoHanh.js"></script>
<script>
	
	var BaoHanh = new DmBaoHanh('?app=DmBaoHanh');
	
	
	
	$(function(){
		
		$('#btnSave').on('click',function(){
			BaoHanh.ten = $('#ten').val();
			BaoHanh.mota = $('#mota').val();
			BaoHanh.trangthai = $('#trangthai').val();
			BaoHanh.Save();
		})
		
	})

</script>










