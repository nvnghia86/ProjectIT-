 <?php
	/* if - else: câu điều khiển rẽ nhánh */
	date_default_timezone_set('Asia/Ho_Chi_Minh');
	$gio = date('H:i:s');
	if($gio<11){
		echo "Bây giờ là: ".$gio."Chúc bạn buổi sáng tốt lành!";
	}else if($gio <13){
		echo "Bây giờ là: ".$gio."Chúc bạn bữa trưa ngon miệng!";
	}else if($gio<17){
		echo "Bây giờ là: ".$gio."Chúc bạn buổi chiều làm việc hiệu quả!";
	}else if($gio<22){
		echo "Bây giờ là: ".$gio."Chúc bạn buổi tối tốt lành bên người thân!";
	}else{
		echo "Bây giờ là: ".$gio."Chúc bạn ngủ ngon!";
	}
 ?>