<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Vòng lặp while</title>
</head>
<body>
	<h2>Hiển thị 100 số chẵn (dương) đầu tiên </h2>
	<h3>Vòng lặp while</h3>

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
</body>
</html>