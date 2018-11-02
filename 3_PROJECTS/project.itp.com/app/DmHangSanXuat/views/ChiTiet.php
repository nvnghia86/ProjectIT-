<?php if (!defined('AREA')) {
    die('Access denied');
} ?>

<form class="row" style="margin-bottom:5px" id="FORM">
    <div class="form-group-sm col-sm-6">
       <label>Tên hãng sản xuất <span class="require">(*)</span></label>
	   <input type="text" class="form-control" placeholder="Tên hãng sản xuất" id="ten" />
    </div>
    <div class="form-group-sm col-sm-6">
       <label>Ảnh Logo <span class="require">(*)</span></label>
       <textarea class="form-control" rows="3" id="anh_logo"></textarea>
    </div>
	<div class="form-group-sm col-sm-6">
       <label>Mô tả <span class="require">(*)</span></label>
	   <textarea class="form-control" rows="3" id="mota"></textarea>
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

<script src="app/DmHangSanXuat/js/DmHangSanXuat.js"></script>
<script>
    
    var Hangsanxuat = new DmHangSanXuat('?app=DmHangSanXuat');
    
    function Page_init(){
        Hangsanxuat.id_dm_hang_sanxuat = Util.getParameterByName('id');
        if(Hangsanxuat.id_dm_hang_sanxuat==0 || Hangsanxuat.id_dm_hang_sanxuat==null){
            $('#ten').val('');
            $('#anh_logo').val('');
            $('#mota').val('');
            $('#trangthai').val('1');
        }else{
            Hangsanxuat.GetById();
            $('#ten').val(Hangsanxuat.ten);
            $('#anh_logo').val(Hangsanxuat.anh_logo);
            $('#mota').val(Hangsanxuat.mota);
            $('#trangthai').val(Hangsanxuat.trangthai);
        }
    }
  $(function(){
        
        Page_init();
        
        $('#btnSave').on('click',function(){
            Hangsanxuat.ten =$('#ten').val();
            Hangsanxuat.anh_logo =$('#anh_logo').val();
            Hangsanxuat.mota =$('#mota').val();
            Hangsanxuat.trangthai =$('#trangthai').val();
            Hangsanxuat.Save();
        })
        
    })

</script>
