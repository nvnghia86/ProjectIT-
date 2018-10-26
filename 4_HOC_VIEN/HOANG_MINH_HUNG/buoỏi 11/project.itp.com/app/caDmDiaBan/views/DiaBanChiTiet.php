<script src="<?= AppObject::getBaseFile('libs/Cores/CoreUtilities.js') ?>"></script>
<script src="<?= AppObject::getBaseFile('app/CoreData/js/CoreDataAjax.js') ?>"></script>
<script src="<?= AppObject::getBaseFile('app/caDmDiaBan/js/CA_DM_DIA_BAN.js') ?>"></script>
<form class="row" style="margin-bottom:5px" id="FORM">
    <div class="form-group-sm col-md-8" id="DiaBanCha">
        <label>Địa bàn cha:</label>
        <input type="hidden" id="FormType" value="add" />
        <input type="hidden" id="hdf_ID_DM_DIA_BAN" value="0" />
        <input type="hidden" id="hdf_ID_DM_DIA_BAN_CHA" value="0" />
        <input type="text" class="form-control" id="txt_TEN_DM_DIA_BAN_CHA" readonly="true" value="" />
    </div>
    <div class="form-group-sm col-md-4">
        <label>Mã địa bàn <span class="require">(*)</span></label>
        <input type="text" class="form-control" id="txt_MA" name="txt_MA" placeholder="Mã" />
    </div>
    <div class="form-group-sm col-md-8">
        <label>Tên <span class="require">(*)</span></label>
        <input type="text" class="form-control" id="txt_TEN" name="txt_TEN" placeholder="Tên địa bàn" />
    </div>
    
    <div class="form-group-sm col-md-12">
        <label>Mô tả <span class="require">(*)</span></label>
        <input type="text" class="form-control" id="txt_MO_TA" name="txt_MO_TA" placeholder="Mô tả" />
    </div>

    <div class="form-group-sm col-md-4">
        <label>Trạng thái </label>
        <select class="form-control" id="sel_TRANG_THAI" name="sel_trang_thai">
            <option value="1">Kích hoạt</option>
            <option value="0">Khóa</option>
        </select>
    </div>

    <div class="form-group-sm ACTIONS col-md-12">
        <hr>
        <input type="hidden" id="hdf_ID" value="0" />
        <button type="button" class="btn btn-primary btn-sm" id="btn_LUU"><i class="glyphicon glyphicon-save"></i> Lưu</button>
        <div class="WecMesseage"></div>
    </div>
</form>
<script>
    var DiaBan = new CA_DM_DIA_BAN('?app=caDmDiaBan');
    var Util = new CoreUtilities();
    
    function Page_init(){
        DiaBan.ID_DM_DIA_BAN = Util.getParameterByName('id');
        $('#hdf_ID_DM_DIA_BAN').val(DiaBan.ID_DM_DIA_BAN);
        var _type = Util.getParameterByName('type');
        if(_type=='add'){
            var _idCha = Util.getParameterByName('id_cha');
            var _text = Util.getParameterByName('text');
            $('#hdf_ID_DM_DIA_BAN_CHA').val(_idCha);
            $('#txt_TEN_DM_DIA_BAN_CHA').val(_text);
        }else if(_type=='edit'){
            $('#DiaBanCha').hide();
            DiaBan.getById();
            $('#hdf_ID_DM_DIA_BAN_CHA').val();
            $('#txt_MA').val(DiaBan.ChiTiet.MA);
            $('#txt_TEN').val(DiaBan.ChiTiet.TEN);
            $('#txt_MO_TA').val(DiaBan.ChiTiet.MO_TA);
            $('#sel_TRANG_THAI').val(DiaBan.ChiTiet.TRANG_THAI);
        }
        
    }
    
    $(function(){
        Page_init();
        
        $('.ACTIONS').on('click','#btn_LUU',function(){
            DiaBan.ID_DM_DIA_BAN = $('#hdf_ID_DM_DIA_BAN').val();
            DiaBan.ID_DM_DIA_BAN_CHA = $('#hdf_ID_DM_DIA_BAN_CHA').val();
            DiaBan.MA = $('#txt_MA').val();
            DiaBan.TEN = $('#txt_TEN').val();
            DiaBan.MO_TA = $('#txt_MO_TA').val();
            DiaBan.TRANG_THAI = $('#sel_TRANG_THAI').val();
            var _rs = DiaBan.save();
            alert(_rs.MESSAGE);
        });
        
        
    });
    
</script>