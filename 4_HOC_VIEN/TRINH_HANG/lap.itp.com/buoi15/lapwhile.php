<h2>Hiển thị 100 số chẵn  (dương) đầu tiên</h2>
<h3>Vòng lặp while</h3>

<?php
	$daysochan="";
	$dem=0;
	$i = 0;
	while ($dem<=200) {
		if ($i%2==0) {
			$daysochan .= "$i;";
		}
		$i++;
		$dem++;
	}
	echo "Day so: $daysochan";
?>
<h3>Vòng lặp do while</h3>
<?php
	$daysochan="";
	$dem=0;
	$i = 0;
	do{
		if ($i%2==0) {
			$daysochan .= "$i;";
			$dem++;
		}
		$i++;
	}while ($dem <=200);
	echo "Day so: $daysochan";
	?>