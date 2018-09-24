 <?php
	/* Vòng lặp for  */
	
	echo "<h2>Các số lẻ trong khoảng từ 1-100<h2>";
	
	$so = '';
	for($i = 0; $i<=100;$i++){
		if($i%2<>0){
			$so .= $i.' ';
		}
	}
	echo $so;
 ?>