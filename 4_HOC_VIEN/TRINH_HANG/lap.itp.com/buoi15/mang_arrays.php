<h1>Mảng trong PHP</h1>
<h2>Mảng một chiều</h2>
<?php
$sv=['Nam', 'Lan','Hà', 'Nga'];
print('<pre>');
print_r($sv);
?>
<h2>Mảng 2 chiều</h2>
<?php
	$sv=[
			['Nam','Hà Nội'],
			['Lan','Phú Yên'],
			['Hà','Nam Định'],
			['Nga','Đà nẵng']
		];
		print('<pre>');
		print_r($sv);
?>
<h2>Mảng kết hợp</h2>
<?php
	$giohang=[
		['Ten'=>'Cam','SL'=>'5','Gia'=>'2000'],
		['Ten'=>'Bưởi','SL'=>'9','Gia'=>'4000'],
		['Ten'=>'Chanh','SL'=>'10','Gia'=>'1000'],
		['Ten'=>'Táo','SL'=>'7','Gia'=>'5000'],
		['Ten'=>'Xoài','SL'=>'5','Gia'=>'9000']
	];
	print('<pre>');
	print_r($giohang);
?>
<h3>giỏ hàng</h3><hr/>
<table width="500" border="1">
	<thead>
		<tr>
			<th>STT</th>
			<th>Tên Sp</th>
			<td>SL</td>
			<th>Giá</th>
			<th>Thành tiền</th>
		</tr>

	</thead>
	<tbody>
		<?php
		sort($giohang);
		$tongtien=0;
		for($i=0;$i<count($giohang);$i++){
		?>
		<tr>
			<td><?=($i+1)?></td>
			<td><?=$giohang[$i]['Ten']?></td>
			<td><?=$giohang[$i]['SL']?></td>
			<td><?=$giohang[$i]['Gia']?> đ</td>
			<td><?=$giohang[$i]['Gia']*$giohang[$i]['SL']?></td>
		</tr>
		<?php 
			$tongtien +=$giohang[$i]['Gia']*$giohang[$i]['SL'];
		}?>
		<tr>
			<td colspan="4">tổng tiền</td>
			<td><?=$tongtien?> đ</td>
		</tr>
	</tbody>
</table>