<?php if (!defined('AREA')) { die('Access denied'); } ?>

<form class="row" style="margin-bottom:5px" id="FORM">
    <div class="form-group-sm col-sm-6">
       <label>Tên khách hàng <span class="require">(*)</span></label>
	   <input type="text" class="form-control" placeholder="Tên khách hàng"  />
    </div>
    
    <div class="form-group-sm col-sm-6">
       <label>Email <span class="require">(*)</span></label>
	   <input type="text" class="form-control" placeholder="Email"  />
    </div>
    
    <div class="form-group-sm col-sm-6">
       <label>Số điện thoại <span class="require">(*)</span></label>
	   <input type="text" class="form-control" placeholder="Số điện thoại"  />
    </div>
    
    <div class="form-group-sm col-sm-6">
       <label>Mật khẩu <span class="require">(*)</span></label>
       <input type="password" class="form-control" placeholder="Mật khẩu"  />
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