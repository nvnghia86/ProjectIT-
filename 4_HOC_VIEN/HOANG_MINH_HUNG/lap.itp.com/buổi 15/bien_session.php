<h2> Biến $_SESSION</h2>
<a href="bien_session.php" target="_blank"> </a>
<?php

	//khởi tạo session (phiên) mới
	session_start();
	if(!isset($_SESSION['dem'])){
		$_SESSION['dem'] = 0;
	}else{
		$_SESSION['dem'] ++;
	}
	echo "số lượt click: " . $_SESSION['dem'];
	print('<pre>');
	print_r($_SESSION);
?>