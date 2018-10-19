<?php
	date_default_timezone_set('Asia/Ho_Chi_Minh');
	/*
		if..else if..else: Điều khiển rẽ nhánh
	*/
	$gio = date('H');
	if($gio<11){
		echo 'Chúc bạn buổi sáng tốt lành!';
	}else if($gio<13){
		echo 'Chúc bạn ăn trưa ngon miệng!';
	}else if($gio<17){
		echo 'Chúc bạn buổi chiều làm việc hiệu quả!';
	}else if($gio<22){
		echo 'Chúc bạn buổi tối vui vẻ bên người thân!';
	}else{
		echo 'Chúc bạn ngủ ngon!';
	}
?>