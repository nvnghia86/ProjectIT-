<?php
	echo "<h2>Các hố lẻ trong khoảng 0 đến 100</h2>";
	$so = '';
	for ($i=0; $i <=100; $i++) { 
		if ($i%2<>0) {
			$so.=$i.' ';
		}
	}
	echo $so;
?>