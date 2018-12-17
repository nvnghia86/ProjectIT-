<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Mảng - Array</title>
</head>
<body>
	<h2>Mảng trong PHP</h2>
	<h3>Mảng 1 chiều</h3>
	<?php 
		$SV = ['Nam', 'Lan', 'Đức', 'Tiến'];
		print_r('<pre>');
		print_r($SV);
	?>
	<h3>Mảng 2 chiều</h3>
	<?php 
		$sv = [
				['Nam','Hà Nội'],
				['Lan', 'Hải Phòng'],
				['Đức', 'Quảng Ninh'],
				['Tiến', 'Ninh Bình']
			  ];
		print('<pre>');
		print_r($sv);
	?>
	<h3>Mảng kết hợp</h3>
	<?php 
		$gioHang = [
						['Ten'=>'Cam','SL'=>5,'Gia'=>2000],
						['Ten'=>'Thanh Long','SL'=>10,'Gia'=>1500],
						['Ten'=>'Mít','SL'=>15,'Gia'=>2600]
				   ];
		print('<pre>');
		print_r($gioHang);
	?>
	<h3>Giỏ hàng</h3>
	<table width="500" border="1px" style="border-collapse: collapse;">
		<thead>
			<tr>
				<th>STT</th>
				<th>Tên hàng</th>
				<th>Số lượng</th>
				<th>Đơn giá</th>
				<th>Thành tiền</th>
			</tr>
		</thead>
		<tbody>
			<?php 
				for ($i=0; $i <count($gioHang) ; $i++) { 
					
				
			?>
			<tr>
				<td><?= ($i+1) ?></td>
				<td><?=$gioHang[$i]['Ten'] ?></td>
				<td><?=$gioHang[$i]['SL'] ?></td>
				<td><?=$gioHang[$i]['Gia'] ?></td>
				<td><?=$gioHang[$i]['Gia']*$gioHang[$i]['SL'] ?>đ</td>
			</tr>
			<?php 
				sort($gioHang);

				$tongTien += $gioHang[$i]['Gia']* $gioHang[$i]['SL'];
				}
			?>
			<tr>
				<td colspan="4">Tổng tiền</td>
				<td><?=$tongTien ?>đ</td>
			</tr>
		</tbody>

	</table>
</body>
</html>