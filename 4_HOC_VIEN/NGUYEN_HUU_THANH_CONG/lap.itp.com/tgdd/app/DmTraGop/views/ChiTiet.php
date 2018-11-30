<?php if (!defined('AREA')) { die('Access denied'); } ?>

<form class="row" style="margin-bottom:5px" id="FORM">
    <div class="form-group-sm col-sm-6">
       <label>Tên Trả Gop <span class="require">(*)</span></label>
	   <input type="text" id="ten" class="form-control" placeholder="Tên Trả Gop"  />
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
<script src="app/DmTraGop/js/DmTraGop.js"></script>
<script>
	
	var TraGop = new DmTraGop('?app=DmTraGop');
	
	function Page_init(){
		TraGop.id_dm_tragop = Util.getParameterByName('id');
		if(TraGop.id_dm_tragop==0 || TraGop.id_dm_tragop==null){
			$('#ten').val('');
			$('#mota').val('');
			$('#trangthai').val('1');
		}else{
			TraGop.GetById();
			$('#ten').val(TraGop.ten);
			$('#mota').val(TraGop.mota);
			$('#trangthai').val(TraGop.trangthai);
		}
	}
	
	$(function(){
		
		Page_init();
		
		$('#btnSave').on('click',function(){
			TraGop.ten = $('#ten').val();
			TraGop.mota = $('#mota').val();
			TraGop.trangthai = $('#trangthai').val();
			TraGop.Save();
		})
		
	})

</script>










