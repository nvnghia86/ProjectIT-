<h2>Hiển thị 100 số chẵn đầu tiên - nguyên dương</h2>
<h3>Vòng lặp While</h3>
<?php
$dem = 0;
$i = 0;
$daysochan = '';
while($dem<=100){
	if($i%2==0){
		$daysochan .="$i; ";
			$dem ++;
	}
	$i++;
}
echo "Dãy số: $daysochan";
?>