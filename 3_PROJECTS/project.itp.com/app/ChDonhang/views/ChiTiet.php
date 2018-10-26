<?php if (!defined('AREA')) {
    die('Access denied');
} ?>

<form class="row" style="margin-bottom:5px" id="FORM">
  <div class="form-group-sm col-sm-6">
   <label>Mã Đơn Hàng <span class="require">(*)</span></label>
	   <input type="text" class="form-control" placeholder="Mã Đơn Hàng"  />
  
</div>

<div class="form-group-sm col-sm-6">
       <label>Ngày Tạo <span class="require">(*)</span></label>
	  <input type="date" name="Ngay_Tao">
    </div>
<div class="form-group-sm col-sm-6">
       <label>Ngày Duyệt <span class="require">(*)</span></label>
	  <input type="date" name="Ngay_Duyet">
    </div>
<div class="form-group-sm col-sm-6">
       <label>Ngày Giao <span class="require">(*)</span></label>
	  <input type="date" name="Ngay_Giao">
    </div>
<div class="form-group-sm col-sm-6">
       <label>Ngày Nhận <span class="require">(*)</span></label>
	  <input type="date" name="Ngay_Nhan">
    </div>
 <div class="form-group-sm col-sm-6">
       <label>Tên Người Nhận<span class="require">(*)</span></label>
	   <input type="text" class="form-control" placeholder="Tên người nhận"  />
    </div>
	<div class="form-group-sm col-sm-6">
       <label>SĐT Người Nhận<span class="require">(*)</span></label>
	   <input type="text" class="form-control" placeholder="SĐT người nhận"  />
    </div>
	<div class="form-group-sm col-sm-6">
       <label>Địa chỉ Người Nhận <span class="require">(*)</span></label>
	   <textarea class="form-control" rows="3"></textarea>
    </div>
	<div class="form-group-sm col-sm-6">
       <label>Trạng Thái<span class="require">(*)</span></label>
	   <input type="text" class="form-control" placeholder="Tên người nhận"  />
    </div>
	<div class="form-group-sm ACTIONS col-sm-12">
        <hr>
        <button type="button" class="btn btn-warning btn-sm" id="btnSave"><i class="glyphicon glyphicon-save"></i> Lưu</button>
    </div>
</form>