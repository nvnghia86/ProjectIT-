<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Biến - Session</title>
</head>
<body>
	<h2>Biến $_session</h2>
	<a href="bien_secsion.php" target="_blank">Mở tab mới</a>
	<?php 
		//Khởi tạo session,(phiên) mới
		session_start();
		if (!isset($_SESSION['dem'])) {
			$_SESSION['dem']=0;
		}
		else
		{
			$_SESSION['dem'] ++;
		}
		echo "Số lượt click: ".$_SESSION['dem'];
		print('<pre>');
		print_r($_SESSION);
	?>
</body>
</html>