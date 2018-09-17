<?php
    echo "<h2> cac so le <br>trong hoang [0-100]</h2>";
	$so='';
	for($i=0; $i<=100;$i++){
		if($i%2<> 0){
			$so.=$i.' ';
		}
	}
	echo $so;
?>