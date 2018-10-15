<h2>Biến $_Session</h2>
<a href="bien_session.php" target="_blank">Mở tab mới</a>
<?php
	// Khởi tạo 1 session mới
	session_start();
	if(!isset($_SESSION['dem'])){
		$_SESSION['dem'] = 0;
	}else{
		$_SESSION['dem'] ++;
	}
	echo "Số lượt click: " .$_SESSION['dem'];
	print('<pre>');
	print_r($_SESSION);
?>