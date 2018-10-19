<html>
<head>
	<meta charset="utf-8" />
	<title>Danh sách học viên</title>
</head>
<body>
<form method="post" action="?controller=hocvien&action=luu">
	<h2>Danh sách học viên</h2>
	<fieldset style="width:370px"> 		
		<legend>Thông tin viên</legend>
		Họ tên: <input type="text" name="HoTen" placeholder="Họ và tên..." size="30" />
		<button type="submit" name="submit"> Lưu </button>
		<input type="hidden" name="Id" value="<?=$this->Id?>" />
	</fieldset>
	<br/>
	<table border="1" width="400">
		<thead>	
			<tr>
				<th>STT</th>
				<th>Họ tên</th>
				<th>Sửa</th>
				<th>Xóa</th>
			</tr>
		</thead>
		<tbody>
		<?php
			for($i=0; $i<count($this->DanhSach); $i++){
		?>
			<tr>
				<td><?=($i+1)?></td>
				<td><?=$this->DanhSach[$i]['hoten']?></td>
				<td><a href="?controller=hocvien&view=sua&id=<?=$this->DanhSach[$i]['id']?>">Sửa</a></td>
				<td><a href="?controller=hocvien&action=xoa&id=<?=$this->DanhSach[$i]['id']?>">Xóa</a></td>
			</tr>
		<?php } ?>
		</tbody>
	</table>
</form>
</body>
</html>





