<?php if (!defined('AREA')) {die('Access denied');} ?>
<form class="row" style="margin-bottom:5px" id="FORM">
    <div class="form-group-sm col-sm-6">
        <label>Sản phẩm </label>
        <select class="form-control" id="id_sanpham" name="id_sanpham">
        </select>
    </div>
    <div class="form-group-sm col-sm-6">
        <label>Thuộc tính</label>
        <select class="form-control" id="id_dm_thuoctinh" name="id_dm_thuoctinh">
        </select>
    </div>
    <div class="form-group-sm col-sm-6">
       <label>Giá trị <span class="require">(*)</span></label>
	   <textarea class="form-control" rows="3"></textarea>
    </div>
    
    <div class="form-group-sm col-sm-4">
        <label>Trạng thái </label>
        <select class="form-control" id="sel_TRANG_THAI" name="trang_thai">
            <option value="1">Còn hàng</option>
            <option value="0">Hết hàng</option>
        </select>
    </div>

    <div class="form-group-sm ACTIONS col-sm-12">
        <hr>
        <button type="button" class="btn btn-warning btn-sm" id="btnSave"><i class="glyphicon glyphicon-save"></i> Lưu</button>
    </div>
</form>
<script src="app/ChSanPhamThuocTinh/js/ChSanPhamThuocTinh.js"></script>
<script src="app/ChSanPham/js/ChSanPham.js"></script>
<script src="app/DmThuocTinh/js/DmThuocTinh.js"></script>
<script>
    var SPThuocTinh = new ChSanPhamThuocTinh('?app=ChSanPhamThuocTinh');
    var DMTT = new DmThuocTinh('?app=DmThuocTinh');
    var SanPham = new DMSanPham('?app=ChSanPham');
    function DmThuocTinh_bind(){
        DMTT.FindAll();
        var _html ='';
        for(var i=0; i<DMTT.DanhSach.length;i++){
            var _dong = DMTT.DanhSach[i];
            _html +='<option value="'+ _dong.id_dm_thuoctinh +'">'+ _dong.ten +'</option>';
        }
        $('#id_dm_thuoctinh').html(_html);
    }

    function SanPham_bind(){
        SanPham.FindAll();
        var _html ='';
        for(var i=0; i<SanPham.DanhSach.length;i++){
            var _dong = SanPham.DanhSach[i];
            _html +='<option value="'+ _dong.id_sanpham +'">'+ _dong.ten +'</option>';
        }
        $('#id_dm_thuoctinh').html(_html);
    }

    function Page_init(){
        SPThuocTinh.id_sanpham_thuoctinh = Util.getParameterByName('id');
        if(SPThuocTinh.id_sanpham_thuoctinh==0 || SPThuocTinh.id_sanpham_thuoctinh==null){
            $('#giatri').val('');
            $('#trangthai').val('1');
        }else{
            SPThuocTinh.GetById();
            $('#giatri').val(SPThuocTinh.giatri);
            $('#trangthai').val(SPThuocTinh.trangthai);
        }
        DmThuocTinh_bind();
        SanPham_bind();
    }
    $(function(){
        Page_init();
        $('#btnSave').on('click',function(){
            SPThuocTinh.giatri = $('#ma').val();
            SPThuocTinh.trangthai = $('#trangthai').val();
            SPThuocTinh.Save();
        });
    });