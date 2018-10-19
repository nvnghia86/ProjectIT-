<h1>Mảng trong PHP</h1>
<h2>Mảng 1 chiều</h2>
<?php
	$sv = ['Nam', 'Lan', 'Đức', 'Tiến'];
	print_r('<pre>');
	print_r($sv);
?>
<h2>Mảng 2 (nhiều) chiều</h2>
<?php
	$sv = [
			['Nam','Hà Nội'],
			['Lan','Bắc Giang'],
			['Đức','Bắc Ninh'], 
			['Tiến','Nam Định']
		];
	print_r('<pre>');
	print_r($sv);
?>	
<h2>Mảng kết hợp</h2>
<?php
	$giohang = [
		['TEN'=>'CAM','SL'=>5,'GIA'=>2000],
		['TEN'=>'QUÝT','SL'=>2,'GIA'=>5000],
		['TEN'=>'BƯỞI','SL'=>4,'GIA'=>15000],
		['TEN'=>'LÊ','SL'=>20,'GIA'=>3000]
	];
	print_r('<pre>');
	print_r($giohang);
?>	
<h3>Giỏ Hàng</h3><hr/>
<table width="500">
	<thead>
		<tr>
			<th>STT</th>
			<th>Tên SP</th>
			<th>Giá</th>
			<th>Thành Tiền</th>
		</tr>
	</thead>
	<tbody>
	<?php
		$tongtien = 0;
		for($i=0; $i<count($giohang);$i++){
	?>	
		<tr>
			<td><?=($i+1)?></td>
			<td><?=$giohang[$i]['TEN']?></td>
			<td><?=$giohang[$i]['SL']?></td>
			<td><?=$giohang[$i]['GIA']?> đ</td>
			<td><?= $giohang[$i]['GIA'] * $giohang[$i]['SL']?> đ</td>
		</tr>
	<?php
		$tongtien += $giohang[$i]['GIA'] * $giohang[$i]['SL'];
		} ?>
		<tr>
			<td colspan="4">Tổng Tiền</td>
			<td><?=$tongtien?> đ</td>
		</tr>
		</tbody>
</table>