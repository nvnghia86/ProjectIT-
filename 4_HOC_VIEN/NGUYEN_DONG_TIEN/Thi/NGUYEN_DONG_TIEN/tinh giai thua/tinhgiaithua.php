<?php
	$kq=1;
	$n= isset($_POST['so-1']) ? $_POST['so-1'] :'0';
	
	for ($i=1; $i<=$n;$i++) {
    $kq=$kq*$i;
}
	
	echo "Ket qua = ".$kq.".";
	$n=0;
?>
<html>
	<form method="POST">
	<table border="solid black 1px">
		<tr>
			<td style="min-width:500px" colspan="8"> Tính giai thừa</td>
		</tr>
			<td colspan="3">Nhập số</td>
			<td colspan="5"><input type="text" name="so-1" size="30" placeholder="Nhập số"></input></td>
		<tr>
		<tr>
			<td colspan="3"><input type="submit" name="tinhtoan-btn" value="Tính toán"/></td>
			<td colspan="5"><input type="text" name="ket-qua" size="50" value="<?=$kq?>"></input></td></td>
		</tr>	
		<tr>
		
	</table>
	</form>
</html>