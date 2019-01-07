<?php
	session_start(); 
 ?>
<?php require_once("includes/connection.php");?>
<?php include("includes/permission.php");?>
<?php include ("includes/header.php"); ?>
<a href="them-thanh-vien.php">Thêm thành viên</a>
<table border="1px;" align="center">
	<thead>
		<tr>
			<td bgcolor="#E6E6FA">ID</td>
			<td bgcolor="#E6E6FA">Username</td>
			<td bgcolor="#E6E6FA">Email</td>
			<td bgcolor="#E6E6FA">Khóa tài kho?n</td>
			<td bgcolor="#E6E6FA">Quy?n</td>
			<td bgcolor="#E6E6FA">Hành d?ng</td>
		<tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>username 1</td>
			<td>email 1</td>
			<td>Không</td>
			<td>Admin</td>
			<td>
				<a href="chinh-sua-thanh-vien.php?id=1">S?a</a>
				<a href="quan-ly-thanh-vien.php?id_delete=1">Xóa</a>
			</td>
		</tr>
		<tr>
			<td>2</td>
			<td>username 2</td>
			<td>email 2</td>
			<td>Có</td>
			<td>Thành viên</td>
			<td>
				<a href="chinh-sua-thanh-vien.php?id=2">S?a</a>
				<a href="quan-ly-thanh-vien.php?id_delete=2">Xóa</a>
			</td>
		</tr>
		<tr>
			<td>3</td>
			<td>username 3</td>
			<td>email 3</td>
			<td>Có</td>
			<td>Admin</td>
			<td>
				<a href="chinh-sua-thanh-vien.php?id=3">S?a</a>
				<a href="quan-ly-thanh-vien.php?id_delete=3">Xóa</a>
			</td>
		</tr>
		<tr>
			<td>4</td>
			<td>username 4</td>
			<td>email 4</td>
			<td>Không</td>
			<td>Thành viên</td>
			<td>
				<a href="chinh-sua-thanh-vien.php?id=4">S?a</a>
				<a href="quan-ly-thanh-vien.php?id_delete=4">Xóa</a>
			</td>
		</tr>
	</tbody>
</table>
<?php include "includes/footer.php" ?>