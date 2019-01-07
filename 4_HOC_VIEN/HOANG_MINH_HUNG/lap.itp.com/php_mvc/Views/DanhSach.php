<html>
<head>
<title>Danh Sách Thành viên </title>
<meta charset='utf-8' />
</head>

<body>

<h2>Danh Sách Thành viên</h2>
<form method="post" action="?controller=thanhvien&action=sua">
<fieldset style="width:400px"> 		
		<legend>Thông tin thành viên</legend>
		<table style="width:400px">
		<tr>
			<td>Họ và tên</td>
			<td>
				<input type="text" size="30" name="HoTen" placeholder="Họ và tên..." value="<?=$this->ThanhVien->HoTen?>" />
			</td>
		</tr>
		
		<tr>
			<td>Quê quán</td>
			<td>
				<input type="text" size="30" name="QueQuan" placeholder="Quê quán..." value="<?=$this->ThanhVien->QueQuan?>" />
			</td>
		</tr>
		
		<tr>
			<td>Năm sinh</td>
			<td>
				<input type="text" size="30" name="NamSinh" placeholder="Năm sinh..." value="<?=$this->ThanhVien->NamSinh?>" />
			</td>
		</tr>
		
	</table>
		<a href="?controller=thanhvien&view=danhsach"><button type="button" name="reset"> Làm mới </button></a>
		<button type="submit" name="submit"> Lưu </button>
		<input type="hidden" name="Id_ThanhVien" value="<?=$this->ThanhVien->Id_ThanhVien?>" />
	</fieldset>
</form>
<br />
<form method="post" action="?controller=thanhvien&action=tim">
<fieldset style="width:400px">
	<legend>Tìm kiếm học viên</legend>	
	<input type="text" size="45" placeholder="Nhập họ tên, email hoặc số điện thoại để tìm.." name="SearchKey" />
	<button type="submit" name="tim"> Tìm kiếm </button>
</fieldset>
</form>
<br/>
<table border=1 width="1000px" >
	<thead>
		<tr>
			<th>STT</th>
			<th>Họ và tên</th>
			<th>Quê quán</th>
			<th>Năm sinh</th>
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
			<td><?=$this->DanhSach[$i]['quequan']?></td>
			<td><?=$this->DanhSach[$i]['namsinh']?></td>
			<td><a href="?controller=thanhvien&view=sua&id=<?=$this->DanhSach[$i]['id_thanhvien']?>">Sửa</a></td>
			<td><a href="?controller=thanhvien&action=xoa&id=<?=$this->DanhSach[$i]['id_thanhvien']?>">Xóa</a></td>
		</tr>
			<?php } ?>
	</tbody>
</table>

</body>
</html>