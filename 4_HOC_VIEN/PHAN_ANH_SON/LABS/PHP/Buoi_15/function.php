 <h2>Giải phương trình bậc 2 một ẩn</h2>
 <?php
 function GiaiPT($a,$b,$c;{
	 if($a == 0){
			if($b == 0){
				if($c == 0){
					echo 'Phương trình có vô số nghiệm';
				}else{
					echo 'Phương trình vô nghiệm';
				}
			}else{
				$x = -$b/$c;
				echo "Phương trình có nghiệm duy nhất: $X "; 
			}
		}else if($dental < 0){
			echo 'Phương trình vô nghiệm';
		}else if($dental == 0 ){
			$X = -$b/2*$a ;
			echo "Phương trình có 2 nghiệm kép $X ";
		}else{
			$x1 = (-$b - sqrt($dental))/(2*$a);
			$x2 = (-$b + sqrt($dental))/(2*$a);
			echo "Phương trình có 2 nghiệm phân biệt: $x1=, $x2= ";
		}
 }
 GiaiPT($a=1,$b=2,$c=3);
 ?>