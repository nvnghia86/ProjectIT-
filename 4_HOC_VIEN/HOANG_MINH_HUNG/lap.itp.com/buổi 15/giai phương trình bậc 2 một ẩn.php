<?php
	//giả phương trình bậc 2-1 ẩn
	function GiaiPT($a,$b,$c){
		if($a==0){
			if($b==0){
				if($c==0){
					echo 'Phương trình vô số nghiệm';
				}else{
					echo 'Phương trình vô số nghiệm';
				}
			}else{
				$n= -$c/$b;
				echo 'Phương trình có 1 nghiệm: $n';
			}	
		}else{
			$delta = $b*$b - 4*$a*$c;
			if($delta < 0){
				echo 'Phương trình vô nghiệm';
			}else if($delta ==0 ){
				$n= -$b/(2*$a);
				echo "Phương trình có nghiệm kép: $n";
			}else{
				$n1 = (-$b - sqrt($delta))/(2*$a);
				$n2 = (-$b + sqrt($delta))/(2*$a);
				echo "Phương trình có 2 nghiệm: <br/> N1: $n1 <br/> N2: $n2";
			}
				
		}
	}
	$a = 1;
	$b = 2;
	$c = 4;
	echo "Phương trình: $a * X^2 + $b * X + $c = 0 <br/>";
	GiaiPT($a, $b, $c);
?>