<?php
    date_default_timezone_set('asia/Ho_Chi_Minh');
    $gio = date('H'); /* H hoa la gio; h thuong la am hoac pm*/
	
	if($gio<11){
		echo 'chuc ban buoi sang tot lanh!';
	}else if($gio <13){
		echo 'chuc ban buoitrua ngon mieng!';
	}else if($gio <17){
		echo 'chuc ban buoi chieu lam viec hieu qua!';
	}else if($gio<22){
		echo 'chuc ban 1buoi toi vui ve ben nguoi than!';
	}else{
		echo 'chuc ban ngu ngon';
	}
?>