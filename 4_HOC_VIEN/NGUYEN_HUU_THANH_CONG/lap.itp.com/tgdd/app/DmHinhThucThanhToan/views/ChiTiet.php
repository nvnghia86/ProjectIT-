<?php if (!defined('AREA')) { die('Access denied'); } ?>

<form class="row" style="margin-bottom:5px" id="FORM">
    <div class="form-group-sm col-sm-6">
       <label>Tên hình thức thanh toán <span class="require">(*)</span></label>
	   <input type="text" id="ten" class="form-control" placeholder="Tên hình thức thanh toán"  />
    </div>
	<div class="form-group-sm col-sm-6">
       <label>Mô tả <span class="require">(*)</span></label>
	   <textarea class="form-control" rows="3" id="mota"></textarea>
    </div>
    
    <div class="form-group-sm col-sm-4">
        <label>Trạng thái </label>
        <select class="form-control" name="trang_thai" id="trangthai">
            <option value="1">Kích hoạt</option>
            <option value="0">Khóa</option>
        </select>
    </div>

    <div class="form-group-sm ACTIONS col-sm-12">
        <hr>
        <button type="button" class="btn btn-warning btn-sm" id="btnSave"><i class="glyphicon glyphicon-save"></i> Lưu</button>
    </div>
</form>
<script src="app/DmHinhThucThanhToan/js/DmHinhThucThanhToan.js"></script>
<script>

    var HinhThucThanhToan = new DmHinhThucThanhToan('?app=DmHinhThucThanhToan');

    function Page_init(){
        HinhThucThanhToan.id_dm_hinhthuc_thanhtoan = Util.getParameterByName('id');
        if(HinhThucThanhToan.id_dm_hinhthuc_thanhtoan == 0 || HinhThucThanhToan.id_dm_hinhthuc_thanhtoan == null){
            $('#ten').val('');
            $('#mota').val('');
            $('#trangthai').val('1');
        }else{
            HinhThucThanhToan.GetById();
            $('#ten').val(HinhThucThanhToan.ten);
            $('#mota').val(HinhThucThanhToan.mota);
            $('#trangthai').val(HinhThucThanhToan.trangthai);
        }
    }

    $(function () {
        Page_init();
        $('#btnSave').on('click',function(){
            HinhThucThanhToan.ten = $('#ten').val();
            HinhThucThanhToan.mota = $('#mota').val();
            HinhThucThanhToan.trangthai = $('#trangthai').val();
            HinhThucThanhToan.Save();
            Page_init();
        });
        
    });
</script>