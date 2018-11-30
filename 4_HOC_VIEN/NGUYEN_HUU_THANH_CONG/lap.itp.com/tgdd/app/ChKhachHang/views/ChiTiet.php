<?php if (!defined('AREA')) {
    die('Access denied');
} ?>

<form class="row" style="margin-bottom:5px" id="FORM">
    <div class="form-group-sm col-sm-6">
        <label>Tên khách hàng <span class="require">(*)</span></label>
        <input type="text" class="form-control" placeholder="Tên khách hàng" id="hoten"  />
    </div>

    <div class="form-group-sm col-sm-6">
        <label>Email <span class="require">(*)</span></label>
        <input type="text" class="form-control" placeholder="Email" id="email"  />
    </div>

    <div class="form-group-sm col-sm-6">
        <label>Số điện thoại <span class="require">(*)</span></label>
        <input type="text" class="form-control" placeholder="Số điện thoại" id="sodienthoai"  />
    </div>

    <div class="form-group-sm col-sm-6">
        <label>Mật khẩu <span class="require">(*)</span></label>
        <input type="password" class="form-control"  placeholder="Mật khẩu" id="matkhau"  />
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
<script src="app/ChKhachHang/js/ChKhachHang.js"></script>
<script>
    var KhachHang = new ChKhachHang('?app=ChKhachHang');
    
    function Page_init(){
		KhachHang.id_khachhang = Util.getParameterByName('id');
		if(KhachHang.id_khachhang==0 || KhachHang.id_khachhang==null){
			$('#hoten').val('');
                        $('#email').val('');
                        $('#sodienthoai').val('');
			$('#matkhau').val('');
			$('#trangthai').val('1');
		}else{
			KhachHang.GetById();
                        $('#hoten').val(KhachHang.hoten);
                        $('#email').val(KhachHang.email);
                        $('#sodienthoai').val(KhachHang.sodienthoai);
                        $('#matkhau').val(KhachHang.matkhau);
                        $('#trangthai').val(KhachHang.trangthai);
		}
	}
        
        
    $(function(){
        
        Page_init();
        
        $('#btnSave').on('click',function(){
            KhachHang.hoten = $('#hoten').val();
            KhachHang.email = $('#email').val();
            KhachHang.sodienthoai = $('#sodienthoai').val();
            KhachHang.matkhau = $('#matkhau').val();
            KhachHang.trangthai = $('#trangthai').val();
            KhachHang.Save();
        });
    });
</script>