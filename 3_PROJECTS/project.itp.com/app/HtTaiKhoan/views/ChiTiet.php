<?php if (!defined('AREA')) { die('Access denied'); } ?>

<form class="row" style="margin-bottom:5px" id="FORM">
    <div class="form-group-sm col-sm-6">
       <label>Tài Khoản <span class="require">(*)</span></label>
	   <input type="text" id="taikhoan" class="form-control" placeholder="Tên Tài khoản"  />
    </div>
	<div class="form-group-sm col-sm-6">
       <label>Mật Khẩu <span class="require">(*)</span></label>
	   <input type="password" id="matkhau" class="form-control" />
    </div>
	<div class="form-group-sm col-sm-6">
       <label>Họ Tên <span class="require">(*)</span></label>
	   <input type="text" id="hoten" class="form-control" placeholder="Nguyễn Ngọc Thủy"  />
    </div>
	<div class="form-group-sm col-sm-6">
       <label>Số Điện Thoại <span class="require">(*)</span></label>
	   <input type="text" id="sodienthoai" class="form-control" />
    </div>
	<div class="form-group-sm col-sm-6">
       <label>Email <span class="require">(*)</span></label>
	   <input type="text" id="email" class="form-control" />
    </div>
	<div class="form-group-sm col-sm-6">
       <label>Vai Trò <span class="require">(*)</span></label>
	   <input type="text" id="id_vaitro" class="form-control" />
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
<script src="app/HtTaiKhoan/js/HtTaiKhoan.js"></script>
<script>
	
	var TaiKhoan = new HtTaiKhoan('?app=HtTaiKhoan');
	
	function Page_init(){
		TaiKhoan.id_taikhoan= Util.getParameterByName('id');
		if(TaiKhoan.id_taikhoan==0 || TaiKhoan.id_taikhoan==null){
			$('#taikhoan').val('');
			$('#matkhau').val('');
			$('#hoten').val('');
			$('#sodienthoai').val('');
			$('#email').val('');
			$('#id_vaitro').val('');
			$('#trangthai').val('1');
		}else{
			TaiKhoan.GetById();
			$('#taikhoan').val(TaiKhoan.taikhoan);
			$('#matkhau').val(TaiKhoan.matkhau);
			$('#hoten').val(TaiKhoan.hoten);
			$('#sodienthoai').val(TaiKhoan.sodienthoai);
			$('#email').val(TaiKhoan.email);
			$('#id_vaitro').val(TaiKhoan.id_vaitro);
			$('#trangthai').val(TaiKhoan.trangthai);
		}
	}
	
	
	$(function(){
		
		Page_init();
		
		$('#btnSave').on('click',function(){
			TaiKhoan.taikhoan = $('#taikhoan').val();
			TaiKhoan.matkhau = $('#matkhau').val();
			TaiKhoan.hoten = $('#hoten').val();
			TaiKhoan.sodienthoai = $('#sodienthoai').val();
			TaiKhoan.email= $('#email').val();
			TaiKhoan.id_vaitro= $('#id_vaitro').val();
			TaiKhoan.trangthai = $('#trangthai').val();
			TaiKhoan.Save();
		})
		
	})

</script>










