<html>
<head>
<title>Quản lý danh mục bảo hành </title>
<meta charset="utf-8"/>
</head>
<body>
<h2> Quản lý danh mục bảo hành</h2>
<fieldset style="width:400px">
	<legend> Thông tin bảo hành</legend>
	<form method="post" action="?controller=chdmbaohanh&action=luu">
		<table style="width:400px">
			<tr>
				<td>Tên</td>
				<td>
					<input type="text" size="30" name="Ten" placeholder="Tên" value="
					<?=$this->DmBaoHanh->Ten?>" />
				</td>
			</tr>
			<tr>
				<td>Mô Tả</td>
				<td>
					<input type="text" size="30" name="MoTa" placeholder="Mô Tả" value="
					<?=$this->DmBaoHanh->MoTa?>" />
				</td>
			</tr>
			<tr>
				<td>Trạng Thái</td>
				<td>
					<input type="text" size="30" name="TrangThai" placeholder="Trạng thái" value="
					<?=$this->DmBaoHanh->TrangThai?>" />
				</td>
			</tr>
		</table>
		<a href="?controller=chdmbaohanh&view=danhsach"><button type="button" name="reset"> Làm mới </button></a>
		<button type="submit" name="submit"> Lưu </button>
		<input type="hidden" name="Id" value="<?=$this->DmBaoHanh-->Id?>" />
	</form>
</fieldset>
<br/>
<fieldset style="width:400px">
	<legend> Thông tin bảo hành</legend>
	<form method="post" action="?controller=chdmbaohanh&action=tim">
		<input type="text" size="45" placeholder=" Tên hoặc mô tả" name="SearchKey" />
        <button type="submit" name="tim"> Tìm kiếm </button>
	</form>
</fieldset>
<br/>
<table border=1 width="1000px" >
	<thead>
		<tr>
			<th>STT</th>
			<th>Tên bảo hành</th>
			<th>Mô tả</th>
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
			<td><?=$this->DanhSach[$i]['ten']?></td>
			<td><?=$this->DanhSach[$i]['mota']?></td>
			<td><?=$this->DanhSach[$i]['trangthai']?></td>
			<td><a href="?controller=chdmbaohanh&view=sua&id=<?=$this->DanhSach[$i]['id']?>">Sửa</a></td>
			<td><a href="?controller=chdmbaohanh&action=xoa&id=<?=$this->DanhSach[$i]['id']?>">Xóa</a></td>
		</tr>
			<?php } ?>
	</tbody>
</table>
</body>

</html>