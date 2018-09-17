<h2>Tìm 100 số chẵn(dương) đầu tiên </h2>
<h3>Vòng lặp while</h3>
<?php
	$daysochan="";
	$dem=0;
	$i=0;
	while($dem <=100){
		if($i%2==0){
			$daysochan .= "$i; ";
			$dem++;
		}
		$i++;
	}
	echo "Day so: $daysochan";
?>
<h3>Vòng lặp do</h3>
<?php
	$daysochan="";
	$dem=0;
	$i=0;
	do{
		if($i%2==0){
			$daysochan .= "$i; ";
			$dem++;
		}
		$i++;
	}while($dem <=100);
	echo "Day so: $daysochan";
?>	
	




