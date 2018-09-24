<h2>Hiển thị 100 số chẵn đầu tiên - nguyên dương</h2>
<h3>Vòng lặp Do - While</h3>
<?php
$dem = 0;
$i = 0;
$daysochan = '';

do{
	if($i%2==0){
		$daysochan .= "$i; ";
		$dem ++;
	}
	$i++;
}while
	echo "Dãy số: $daysochan";
?>