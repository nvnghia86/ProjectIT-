<?php if (!defined('AREA')) { die('Access denied'); } ?>

<form class="row" style="margin-bottom:5px" id="FORM">
    <div class="form-group-sm col-sm-6">
       <label>Mã khuyến mại <span class="require">(*)</span></label>
	   <input type="text" id="ma" class="form-control" placeholder="Mã khuyến mại"  />
    </div>
	<div class="form-group-sm col-sm-6">
       <label>Tên khuyến mại<span class="require">(*)</span></label>
	   <textarea id="ten" class="form-control" rows="3"></textarea>
    </div>
	
	<div class="form-group-sm col-sm-6">
       <label>Nội dung <span class="require">(*)</span></label>
	   <textarea id="noidung" class="form-control" rows="3"></textarea>
    </div>
    
    <div class="form-group-sm col-sm-4">
        <label>Trạng thái </label>
        <select id="trangthai" class="form-control" id="sel_TRANG_THAI" name="trang_thai">
            <option value="1">Kích hoạt</option>
            <option value="0">Khóa</option>
        </select>
    </div>

    <div class="form-group-sm ACTIONS col-sm-12">
        <hr>
        <button type="button" class="btn btn-warning btn-sm" id="btnSave"><i class="glyphicon glyphicon-save"></i> Lưu</button>
    </div>
</form>

<script src="app/DmKhuyenmai/js/DmKhuyenmai.js"></script>
<script>
	
	var Khuyenmai = new DmKhuyenmai('?app=DmKhuyenmai');
	
	function Page_init(){
		Khuyenmai.id_dm_khuyenmai = Util.getParameterByName('id');
		if(Khuyenmai.id_dm_khuyenmai==0 || Khuyenmai.id_dm_khuyenmai==null){
			$('#ma').val('');
			$('#ten').val('');
			$('#noidung').val('');
			$('#trangthai').val('1');
		}else{
			Khuyenmai.GetById();
			$('#ma').val(Khuyenmai.ma);
			$('#ten').val(Khuyenmai.ten);
			$('#noidung').val(Khuyenmai.noidung);
			$('#trangthai').val(Khuyenmai.trangthai);
		}
	}
	
	$(function(){
		
		Page_init();
		
		$('#btnSave').on('click',function(){
			Khuyenmai.ma = $('#ma').val();
			Khuyenmai.ten = $('#ten').val();
			Khuyenmai.noidung = $('#noidung').val();
			Khuyenmai.trangthai = $('#trangthai').val();
			Khuyenmai.Save();
		})
		
	})

</script>










