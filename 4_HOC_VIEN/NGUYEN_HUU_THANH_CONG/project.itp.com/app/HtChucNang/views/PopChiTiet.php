
<script src="<?= AppObject::getBaseFile('app/HtChucNang/js/HtChucNang.js') ?>"></script>
<form class="row" style="margin-bottom:5px" id="FORM">
    <div class="form-group-sm col-sm-6" id="DiaBanCha">
        <label>Menu cha:</label>
        <input type="hidden" id="id_ht_chucnang" value="0" />
        <input type="hidden" id="id_ht_chucnang_cha" value="0" />
        <input type="text" class="form-control" id="ten_chucnang_cha" readonly="true" value="" />
    </div>
    <div class="form-group-sm col-sm-6">
        <label>Mã chức năng <span class="require">(*)</span></label>
        <input type="text" class="form-control" id="ma" name="txt_ma" placeholder="Mã" />
    </div>
    <div class="form-group-sm col-sm-6">
        <label>Tiêu đề <span class="require">(*)</span></label>
        <input type="text" class="form-control" id="tieude" name="tieude" placeholder="Tiêu đề" />
    </div>
    <div class="form-group-sm col-sm-6">
        <label>Url <span class="require">(*)</span></label>
        <input type="text" class="form-control" id="url" name="url" value="#" />
    </div>
    
    <div class="form-group-sm col-sm-6">
        <label>Css</label>
        <input type="text" class="form-control" id="css" name="css" />
    </div>
    
    <div class="form-group-sm col-sm-6">
        <label>Css Class</label>
        <input type="text" class="form-control" id="css_class" name="css_class" />
    </div>

    <div class="form-group-sm col-sm-4">
        <label>Trạng thái </label>
        <select class="form-control" id="trangthai" name="trangthai">
            <option value="1">Kích hoạt</option>
            <option value="0">Khóa</option>
        </select>
    </div>

    <div class="form-group-sm ACTIONS col-sm-12">
        <hr>
        <button type="button" class="btn btn-primary btn-sm" id="btnSave"><i class="glyphicon glyphicon-save"></i> Lưu</button>
        <div class="WecMesseage"></div>
    </div>
</form>
<script>
    var Util = new CoreUtilities();
    var ChucNang = new HtChucNang();
    function Page_init(){
        ChucNang.id_ht_chucnang_cha = Util.getParameterByName('id_cha');
        ChucNang.id_ht_chucnang = Util.getParameterByName('id');
        ChucNang.ten_chucnang_cha = Util.getParameterByName('ten_chucnang_cha');
        if(ChucNang.id_ht_chucnang != '0'){
            ChucNang.getById();
            $('#ten_chucnang_cha').hide();
            Form_binding();
            
        }else{
            Form_reset();
        }
    }
    
    function Form_binding(){
        $('#id_ht_chucnang').val(ChucNang.id_ht_chucnang);
        $('#id_ht_chucnang_cha').val(ChucNang.id_ht_chucnang_cha);
        $('#ten_chucnang_cha').val(ChucNang.ten_chucnang_cha);
        $('#tieude').val(ChucNang.tieude);
        $('#ma').val(ChucNang.ma);
        $('#url').val(ChucNang.url);
        $('#loai').val(ChucNang.loai);
        $('#trangthai').val(ChucNang.trangthai);
        $('#css').val(ChucNang.css);
        $('#css_class').val(ChucNang.css_class);
        $('#thutu').val(ChucNang.thutu);
    }
    
    function Form_reset(){
        $('#id_ht_chucnang').val(ChucNang.id_ht_chucnang);
        $('#id_ht_chucnang_cha').val(ChucNang.id_ht_chucnang_cha);
        $('#ten_chucnang_cha').val(ChucNang.ten_chucnang_cha);
        $('#tieude').val('');
        $('#ma').val('');
        $('#url').val('#');
        $('#loai').val('');
        $('#trangthai').val('1');
        $('#css').val('');
        $('#css_class').val('');
        $('#thutu').val('');
    }
    
    $(function(){
        Page_init();
        
        $('#btnSave').on('click',function(){
            ChucNang.tieude = $('#tieude').val();
            ChucNang.ma = $('#ma').val();
            ChucNang.url = $('#url').val();
            ChucNang.trangthai = $('#trangthai').val();
            ChucNang.css = $('#css').val();
            ChucNang.css_class = $('#css_class').val();
            ChucNang.save();
            Page_init();
        });
        
        
    });
    
</script>