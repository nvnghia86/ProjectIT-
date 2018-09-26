 <h1>Mảng trong PHP</h1>
 <h2>Mảng 1 chiều</h2>
 <?php
	$sv =['Nam', 'Trang', 'Ngọc', 'Tiến'];
	print('<pre>');
	print_r($sv);
 ?>
 <h2> Mảng 2 chiều</h2>
 <?php
	$sv = [
		['Nam','Hà Nội'],
		['Trang','Hà Nam'],
		['Ngọc','Bắc Ninh'],
		['Tiến','Bắc Giang']
	];
	print('<pre>');
	print_r($sv);
 ?>
 
 <h2>Mảng kết hợp</h2>
 <?php
	$giohang = [
		['TEN'=>'Cam', 'SL'=>'5', 'GIA'=>'2000'],
		['TEN'=>'Quýt', 'SL'=>'4', 'GIA'=>'12000'],
		['TEN'=>'Lê', 'SL'=>'6', 'GIA'=>'7000'],
		['TEN'=>'Bưởi', 'SL'=>'10', 'GIA'=>'12000']
	];
	print('<pre>');
	print_r($giohang);
 ?>
 
 <h3>Giỏ hàng</h3>
 <table width="500px" border=1>
 <tr>
	<th>STT</th>
	<th>Tên sản phẩm</th>
	<th>Số lượng</th>
	<th>Giá</th>
	<th>Thành tiền</th>
 </tr>
 <tbody>
	<?php
		sort($giohang);
		$tongtien = 0;
		for($i = 0; $i<count($giohang); $i++){
	?>
	<tr>
		<td><?=($i+1)?></td>
		<td><?=$giohang[$i]['TEN']?></td>
		<td><?=$giohang[$i]['SL']?></td>
		<td><?=$giohang[$i]['GIA']?></td>
		<td><?=$giohang[$i]['GIA']*$giohang[$i]['SL']?> VNĐ</td>
	</tr>
		<?php 
			$tongtien += $giohang[$i]['GIA'] * $giohang[$i]['SL'];
		} ?>
	<tr>
		<td colspan=4>Tổng tiền</td>
		<td><?=$tongtien?> VNĐ</td>
	</tr>
 </tbody>
 </table>