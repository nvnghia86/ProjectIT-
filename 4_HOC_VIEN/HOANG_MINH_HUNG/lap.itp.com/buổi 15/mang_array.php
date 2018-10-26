<h1> Mảng trong PHP </h1>
<h2> Mảng 1 chiều</h2>
<?php
	$sv = [ 'Nam','Lan','Đức','Giang'];
	print ('<pre>');
	print_r($sv);
?>
<h2> Mảng 2 chiều</h2>
<?php
	$sv = [
		['Nam','ha noi'],
		['lan','bắc giang'],
		['Đức','bắc ninh'],
		['Giang','nam đinh']
	 ];
		print ('<pre>');
	    print_r($sv);

?>
<h2> Mảng kết hợp</h2>
<?php
	$giohang = [
		[ 'Ten'=>'cam','SL'=>5,'Gia'=>2000],
		[ 'Ten'=>'quyt','SL'=>2,'Gia'=>5000],
		[ 'Ten'=>'bưởi','SL'=>4,'Gia'=>15000],
		[ 'Ten'=>'lê','SL'=>20,'Gia'=>2000],
	];
	print ('<pre>');
	print_r($giohang);
?>
<h3> giỏ hàng</h3>
<table width="500" border="1">
	<thead>
		<tr>
			<th> STT</th>
			<th> Tên sp</th>
			<th> Số lượng</th>
			<th> Gía</th>
			<th> Thành tiền </th>
		</tr>
	</thead>
	<tbody>
	<?php
		$tongtien = 0;
		for( $i=0; $i< count($giohang);$i++){
	?>
		<tr>
			<td><?= ($i+1)?></td>
			<td><?=$giohang[$i] ['Ten']?></td>
			<td><?=$giohang[$i] ['SL'] ?></td>
			<td> <?=$giohang[$i] ['Gia']?> đ</td>
			<td><?=$giohang[$i] ['Gia'] * $giohang[$i] ['SL']?> </td>
		</tr>
	<?php
		$tongtien =$giohang[$i] ['Gia'] * $giohang[$i] ['SL'];
		}?>
		<tr>
			<td colspan="4">Tổng tiền</td>
			<td><?= $tongtien?></td>
		</tr>
	</tbody>
</table>