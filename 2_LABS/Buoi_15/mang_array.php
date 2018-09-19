<h1>Mảng trong PHP</h1>
<h2>Mảng 1 chiều </h1>
<?php
	$sv = ['Nam', 'Lan','Đức', 'Tiến'];
	print('<pre>');
	print_r($sv);
?>
<h2>Mảng 2 (nhiều) chiều </h1>
<?php
	$sv = [
		['Nam','Hà Nội'],
		['Lan','Bắc Giang'],
		['Đức','Bắc Ninh'], 
		['Tiến','Nam Định']
	];
	print('<pre>');
	print_r($sv);

?>
<h2>Mảng kết hợp </h1>
<?php
	$giohang = [
		['TEN'=>'Cam','SL'=>5,'GIA'=> 2000],
		['TEN'=>'Quýt','SL'=>2,'GIA'=> 5000],
		['TEN'=>'Bưởi','SL'=>4,'GIA'=> 15000],
		['TEN'=>'Lê','SL'=>20,'GIA'=> 2000]
	];
	print('<pre>');
	print_r($giohang);
?>
<h3>Giỏ hàng</h3><hr/>
<table width="500" border="1">
	<thead>
		<tr>
			<th>STT</th>
			<th>Tên SP</th>
			<th>Số lượng</th>
			<th>Giá</th>
			<th>Thành tiền</th>
		</tr>
	</thead>
	<tbody>
	<?php
		sort($giohang);
		$tongtien = 0;
		for($i=0; $i< count($giohang);$i++){	
	?>
		<tr>
			<td><?=($i+1)?></td>
			<td><?=$giohang[$i]['TEN']?></td>
			<td><?=$giohang[$i]['SL']?></td>
			<td><?=$giohang[$i]['GIA']?>đ</td>
			<td><?= $giohang[$i]['GIA'] * $giohang[$i]['SL']?> đ</td>
		</tr>
	<?php 
		$tongtien += $giohang[$i]['GIA'] * $giohang[$i]['SL'];
		} ?>
		<tr>
			<td colspan="4">Tổng tiền</td>
			<td><?=$tongtien?> đ</td>
		</tr>
	</tbody>
<table>


