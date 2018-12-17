<html>
	<head>
		<title>Danh sách học viên</title>
		<meta charset="utf-8"/>
	</head>
	<body>
		<table border="1" style="border-collapse: collapse;">
			<thead>
				<tr>
					<th>STT</th>
					<th>Họ tên</th>
				</tr>
			</thead>
			<tbody>

				<?php for ($i=0; $i <count($this->DanhSach) ; $i++) { ?>
					<tr>
						<td><?=($i+1)?></td>
						<td><?=$this->DanhSach[$i]['hoten']?></td>
					</tr>
				<?php } ?>
			</tbody>
		</table>
	</body>
</html>