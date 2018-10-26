<html>
<head>
	<meta charset="utf-8" />
	<title>Sửa thông tin học viên</title>
</head>
<body>
<form method="post" action="?controller=hocvien&action=sua">
	<fieldset style="width:370px"> 		
		<legend>Thông tin học viên</legend>
		Họ tên: <input type="text" name="HoTen" placeholder="Họ và tên..." size="30" value="<?=$this->HocVien->HoTen?>" />
		<button type="submit" name="submit"> Lưu </button>
		<input type="hidden" name="Id" value="<?=$this->HocVien->Id?>" />
	</fieldset>
	
</form>
</body>
</html>





