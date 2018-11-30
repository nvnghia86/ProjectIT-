<?php 
	$result = '';
	if (isset($_POST['tinh']))
	{
    	$a = isset($_POST['a']) ? $_POST['a'] : '';
    	$b = isset($_POST['b']) ? $_POST['b'] : '';
    	$c = isset($_POST['c']) ? $_POST['c'] : '';
    	$delta = ($b*$b) - (4*$a*$c);
 
    	if ($delta < 0)
    	{
        	$result = 'Phương trình vô nghiệp';
    	}
    	else if ($delta == 0)
    	{
        	$result = 'Phương trình nghiệp kép x1 = x2 = ' . (-$b/2*$a);
    	}
    	else 
    	{
        	$result = 'Phương trình có hai nghiệp phân biệt, x1 = ' . ((-$b + sqrt($delta))/2*$a);
        	$result .= ',x2 = ' . ((-$b - sqrt($delta))/2*$a);
    	}
	}
	echo $result;
 ?>
