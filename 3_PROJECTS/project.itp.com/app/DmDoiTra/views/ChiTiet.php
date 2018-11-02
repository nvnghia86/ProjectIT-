<?php if (!defined('AREA')) { die('Access denied'); } ?>

<form class="row" style="margin-bottom:5px" id="FORM">
    <div class="form-group-sm col-sm-6">
        <label>Tên đổi trả <span class="require">(*)</span></label>
        <input type="text" id="ten" class="form-control" placeholder="Tên đổi trả"  />
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
<script src="app/DmDoiTra/js/DmDoiTra.js"></script>
<script>

    var DoiTra = new DmDoiTra('?app=DmDoiTra');

    function Page_init(){
        DoiTra.id_dm_doitra = Util.getParameterByName('id');
        if(DoiTra.id_dm_doitra ==0 || DoiTra.id_dm_doitra ==null){
            $('#ten').val('');
            $('#mota').val('');
            $('#trangthai').val('1');
        }else{
            DoiTra.GetById();
            $('#ten').val(DoiTra.ten);
            $('#mota').val(DoiTra.mota);
            $('#trangthai').val(DoiTra.trangthai);
        }
    }

    $(function(){

        Page_init();

        $('#btnSave').on('click',function(){
            DoiTra.ten = $('#ten').val();
            DoiTra.mota = $('#mota').val();
            DoiTra.trangthai = $('#trangthai').val();
            DoiTra.Save();
        })

    })

</script>










