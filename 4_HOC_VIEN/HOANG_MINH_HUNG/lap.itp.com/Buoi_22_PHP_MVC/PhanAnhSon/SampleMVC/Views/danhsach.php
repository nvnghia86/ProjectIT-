<html>
<head>
	<meta charset="utf-8" />
	<title>Danh sách học viên</title>
</head>
<body>
	<h2>Danh sách học viên</h2>
	<table border="1" width="400">
		<thead>	
			<tr>
				<th>STT</th>
				<th>Họ tên</th>
			</tr>
		</thead>
		<tbody>
		<?php
			for($i=0; $i<count($this->DanhSach); $i++){
		?>
			<tr>
				<td><?=($i+1)?></td>
				<td><?=$this->DanhSach[$i]['hoten']?></td>
			</tr>
		<?php } ?>
		</tbody>
	</table>
</body>
</html>