<?php if (!defined('AREA')) { die('Access denied'); } ?>

<form class="row" style="margin-bottom:5px" id="FORM">
    <div class="form-group-sm col-sm-6">
       <label>Tên Vài Trò <span class="require">(*)</span></label>
	   <input type="text" id="ten" class="form-control" placeholder="Tên vai Trò"  />
    </div>
	<div class="form-group-sm col-sm-6">
       <label>Mô tả <span class="require">(*)</span></label>
	   <textarea id="mota" class="form-control" rows="3"></textarea>
    </div>
    
    <div class="form-group-sm col-sm-4">
        <label>Trạng thái </label>
        <select class="form-control" id="trangthai" name="trang_thai">
            <option value="1">Kích hoạt</option>
            <option value="0">Khóa</option>
        </select>
    </div>

    <div class="form-group-sm ACTIONS col-sm-12">
        <hr>
        <button type="button" class="btn btn-warning btn-sm" id="btnSave"><i class="glyphicon glyphicon-save"></i> Lưu</button>
    </div>
</form>
<script src="app/HtVaiTro/js/HtVaiTro.js"></script>
<script>
    
    var VaiTro = new HtVaiTro('?app=HtVaiTro');
    
    function Page_init(){
        VaiTro.id_vaitro = Util.getParameterByName('id');
        if(VaiTro.id_vaitro==0 || VaiTro.id_vaitro==null){
            $('#ten').val('');
            $('#mota').val('');
            $('#trangthai').val('1');
        }else{
            VaiTro.GetById();
            $('#ten').val(VaiTro.ten);
            $('#mota').val(VaiTro.mota);
            $('#trangthai').val(VaiTro.trangthai);
        }
    }
    
    
    
    
    
    $(function(){
        
        Page_init();
        
        $('#btnSave').on('click',function(){
            VaiTro.ten = $('#ten').val();
            VaiTro.mota = $('#mota').val();
            VaiTro.trangthai = $('#trangthai').val();
            VaiTro.Save();
        })
        
    })

</script>
