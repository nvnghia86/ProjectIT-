<?php if (!defined('AREA')) { die('Access denied'); } ?>

<form class="row" style="margin-bottom:5px" id="FORM">
    <div class="form-group-sm col-sm-6">
       <label> Họ Tên <span class="require">(*)</span></label>
	   <input type="text" class="form-control" placeholder="Họ tên người dùng"  />
    </div>
	<div class="form-group-sm col-sm-6">
       <label> Tên Tài Khoản <span class="require">(*)</span></label>
	   <input type="text" class="form-control" placeholder="Tài khoản người dùng"  />
    </div>
	<div class="form-group-sm col-sm-6">
       <label>Số Điện Thoại <span class="require">(*)</span></label>
	   <textarea class="form-control" rows="3"></textarea>
    </div>
    <div class="form-group-sm col-sm-6">
       <label> Email <span class="require">(*)</span></label>
	   <input type="text" class="form-control" placeholder="thuy@gmail.com"  />
    </div>
	<div class="form-group-sm col-sm-6">
       <label>Vai Trò <span class="require">(*)</span></label>
	   <input type="text" class="form-control" />
    </div>
    <div class="form-group-sm col-sm-4">
        <label>Trạng thái </label>
        <select class="form-control" id="sel_TRANG_THAI" name="trang_thai">
            <option value="1">Kích hoạt</option>
            <option value="0">Khóa</option>
        </select>
    </div>

    <div class="form-group-sm ACTIONS col-sm-12">
        <hr>
        <button type="button" class="btn btn-warning btn-sm" id="btnSave"><i class="glyphicon glyphicon-save"></i> Lưu</button>
    </div>
</form>