<?php
$DB = new MySQLHelper();
if(isset($_SESSION['giohang'])){
	//print('<pre>');
	//print_r($_SESSION['giohang']);
	$giohang = $_SESSION['giohang'];
}else{
	//echo "<h2>Giỏ hàng trống</h2>";
	$giohang = array();
} 


?>
<div class="row well" style="top:30px">
	<form class="col-md-12" style="margin:0; auto" method="post" action="?app=gianhang&action=dathang">
		<h2>Thông tin khách hàng</h2><hr/>
		<div class="form-group col-md-6">
			<label>Họ tên</label>
			<input id="ten_nguoinhan" name="ten_nguoinhan" placeholder="Họ tên khách hàng" class="form-control"  />
		</div>
		<div class="form-group col-md-6">
			<label>Số điện thoại</label>
			<input id="sdt_nguoinhan" name="sdt_nguoinhan" placeholder="Số điện thoại" class="form-control"  />
		</div>
		<div class="form-group col-md-4">
			<label>Hình thức thanh toán</label>
			<select name="id_hinhthuc_thanhtoan" class="form-control">
				<option value="1">Thanh toán, nhận hàng tại cửa hàng</option>
				<option value="2">Thanh toán, nhận tại cửa nhà</option>
				<option value="3">Chuyển khoản online</option>
			</select>
		</div>
		<div class="form-group col-md-8">
			<label>Địa chỉ giao hàng</label>z
			<input id="diachi_nguoinhan" name="diachi_nguoinhan" placeholder="Địa chỉ người nhận" class="form-control"  />
		</div>
		<div class="form-group col-md-12">
			<label>Yêu cầu khác</label>
			<textarea name="ghichu" class="form-control" rows="3"></textarea>
		</div>
		<div class="form-group col-md-12">
			<button type="submit" class="btn btn-sm btn-success"><i class="glyphicon glyphicon-ok-circle"></i>  Đặt hàng</button> 
			<a class="btn btn-sm btn-danger" href="?app=gianhang&action=huygiohang"><i class="glyphicon glyphicon-remove-circle"></i> Hủy đơn hàng</a>
		</div>
	<form>
	<div class="col-md-12" style="margin:0; auto">
		<h2>Danh sách sản phẩm</h2><hr/>
		<table class="table table-bordered tabler-hover table-stripped">
			<thead>
				<tr>
					<th>STT</th>
					<th>Sản phẩm</th>
					<th>Giá bán</th>
					<th>Số lượng</th>
					<th>Thành tiền</th>
				</tr>
			</thead>
			<tbody>
			<?php 
				$tongtien = 0;
				$i = 0;
				foreach ($giohang as $key => $value){
					$i++;
					$id = $value['id'];
					$data = $DB->callProcedure('p_ch_sanpham_get_byid(?)',array($id));
					$sp = $data[0];
					$gia = (int)$sp['gia_ban'];
					$soluong = (int)$value['soluong'];
					$thanhtien = $gia  * $soluong;
					$tongtien += $thanhtien;
			?>
				<tr>
					<td><?=($i)?></td>
					<td>
						<?=$sp['ten']?>
					</td>
					<td><b style="color:red"><?=$sp['gia_ban']?>₫</b></td>
					<td><?=$value['soluong']?></td>
					<td><?= $gia*$soluong ?></td>
				</tr>
				<?php } ?>	
			</tbody>
		</table>
		<hr/>
		<h3>Tổng tiền thanh toán <span style="color:red"><?=$tongtien?>₫</span></h3>
	
</div>
	</div>
</div>