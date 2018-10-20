<h2> Hiển thị 100 số chẵn (dương) đầu tiên </h2>
<h3> Vòng lặp while </h3>
<?php	
	$dem =0;
	$i = 0;
	$daysochan ="";
	while($dem <=100){
		if($i%2==0){
			$daysochan .= "$i; ";
		}
		$i++;
		$dem++;
	}
	echo "Day so: $daysochan";