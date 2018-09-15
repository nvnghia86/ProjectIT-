<?php 
	/*Vòng lặp for*/
	echo "<h2>Các số lẻ trong khoảng 0 đến 100</h2>";
	$so = '';
	for ($i=0; $i <= 100; $i++) { 
		if ($i%2 == 1) {
			$so .= $i. ' ';
		}
	}
	echo $so
 ?>