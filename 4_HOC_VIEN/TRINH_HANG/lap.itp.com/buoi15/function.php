<?php
function GiaiPT($a,$b,$c){
	if($a==0){
		if($b==0){
			echo "Phuowg trình vô số nghiệm";
		}
		else{
			echo "Phương trình vô nghiệm";
		}
	}
	else{
		$n = $c/$b;
		echo "Phương trình có nghiệm duy nhất: $n";
	}
	else{
		$delta=4b*$b-4*$a*$c;
		if ($delta<0) {
			echo "Phương trình vô nghiệm";
		}
		else if ($delta==0) {
			$n=-$b/(2*$a);
			echo "Phương trình có nghiệm kép: $n";
		}
		else ($delta>0) {
			$n1 = (-$b+sqrt(delta))/(2*a);
			$n2 = (-$b-sqrt(delta))/(2*a);
			echo "Phương trình có hai nghiệm phân biệt:$n1 $n2";
		}
	}
}
GiaiPT(2,3,4);
?>