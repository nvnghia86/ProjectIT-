<html>
<head>
<title>Danh Sách Khách Hàng</title>
<meta charset='utf-8' />
</head>

<body>
<form method="post" action="?controller=khachhang&action=sua">
<h2>Danh Sách Khách Hàng</h2>
<fieldset style="width:400px">
	<legend>Danh sách khách hàng</legend>
	<table style="width:400px">
		<tr>
			<td>Họ và tên</td>
			<td>
				<input type="text" size="30" name="HoTen" placeholder="Họ và tên..." />
			</td>
		</tr>
		<tr>
			<td>Email</td>
			<td>
				<input type="text" size="30" name="Email" placeholder="Email..." />
			</td>
		</tr>
		<tr>
			<td>Số điện thoại</td>
			<td>
				<input type="text" size="30" name="SoDienThoai" placeholder="Số điện thoại..." />
			</td>
		</tr>
		<tr>
			<td>Mật khẩu</td>
			<td>
				<input type="text" size="30" name="MatKhau" placeholder="Mật khẩu..." />
			</td>
		</tr>
		<tr>
			<td>Trạng thái</td>
			<td>
				<input type="text" size="30" name="TrangThai" placeholder="Trạng thái..." />
			</td>
		</tr>
	</table>
	<button type="submit" name="submit">Gửi</button>
	<input type="hidden" name="Id_KhachHang" value="<?=$this->Id_KhachHang?>" />
</fieldset>
<br />
<table border=1 width="1000px" >
	<thead>
		<tr>
			<th>STT</th>
			<th>Họ và tên</th>
			<th>Email</th>
			<th>Số điện thoại</th>
			<th>Mật khẩu</th>
			<th>Trạng thái</th>
			<th colspan=2>Thao tác</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<?php
				for($i=0;$i<count($this->DanhSach);$i++){
			?>
			<td><?=($i+1)?></td>
			<td><?=$this->DanhSach[$i]['hoten']?></td>
			<td><?=$this->DanhSach[$i]['email']?></td>
			<td><?=$this->DanhSach[$i]['sodienthoai']?></td>
			<td><?=$this->DanhSach[$i]['matkhau']?></td>
			<td><?=$this->DanhSach[$i]['trangthai']?></td>
			<td><a href="?controller=khachhang&view=sua&id=<?=$this->DanhSach[$i]['id_khachhang']?>">Sửa</a></td>
			<td><a href="?controller=khachhang&action=xoa&id=<?=$this->DanhSach[$i]['id_khachhang']?>">Xóa</a></td>
		</tr>
			<?php } ?>
	</tbody>
</table>
</form>
</body>
</html>