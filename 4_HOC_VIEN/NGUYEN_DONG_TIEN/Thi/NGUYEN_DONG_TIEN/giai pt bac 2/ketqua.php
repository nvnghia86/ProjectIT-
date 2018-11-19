<?php
	$kq=0;
	$a= isset($_POST['so-a']) ? $_POST['so-a'] :'0';
	$b= isset($_POST['so-b']) ? $_POST['so-b'] :'0';
	$c= isset($_POST['so-c']) ? $_POST['so-c'] :'0';
	
	$delta=$b*$b-4*$a*$c;
	if($delta==0){
		echo "Phương trình có nghiệm kép: x1=x2= ".-$b/2*$a.".";
	}
	else
		if($delta>=0){
			echo "Phương trình có 2 nghiệm pb: x1=".(-$b+sqrt($delta))/2*$a.", x2= ".(-$b-sqrt($delta))/2*$a.".";
			}
			else{
				echo "Pt vô nghiệm";
			}

?>
