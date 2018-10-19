<html>
<head>
	<meta charset="utf-8" />
	<title>Sửa thông tin khách hàng</title>
</head>
<body>
<form method="post" action="?controller=khachhang&action=sua">
	<fieldset style="width:400px"> 		
		<legend>Thông tin khách hàng</legend>
		<table style="width:400px">
		<tr>
			<td>Họ và tên</td>
			<td>
				<input type="text" size="30" name="HoTen" placeholder="Họ và tên..." value="<?=$this->KhachHang->HoTen?>" />
			</td>
		</tr>
		
		<tr>
			<td>Email</td>
			<td>
				<input type="text" size="30" name="Email" placeholder="Email..." value="<?=$this->KhachHang->Email?>" />
			</td>
		</tr>
		
		<tr>
			<td>Số điện thoại</td>
			<td>
				<input type="text" size="30" name="SoDienThoai" placeholder="Số điện thoại..." value="<?=$this->KhachHang->SoDienThoai?>" />
			</td>
		</tr>
		
		<tr>
			<td>Mật khẩu</td>
			<td>
				<input type="text" size="30" name="MatKhau" placeholder="Mật khẩu..." value="<?=$this->KhachHang->MatKhau?>" />
			</td>
		</tr>
		
		<tr>
			<td>Trạng thái</td>
			<td>
				<input type="text" size="30" name="TrangThai" placeholder="Trạng thái..." value="<?=$this->KhachHang->TrangThai?>" />
			</td>
		</tr>
	</table>
		<button type="submit" name="submit"> Lưu </button>
		<input type="hidden" name="Id_KhachHang" value="<?=$this->KhachHang->Id_KhachHang?>" />
	</fieldset>
	
</form>
</body>
</html>





