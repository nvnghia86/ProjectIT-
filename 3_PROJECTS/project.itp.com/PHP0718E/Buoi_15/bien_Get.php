<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Biến - Get</title>
</head>
<body>
	<h2>Biến - Get</h2>
	<?php 
		if (isset($_GET['SanPham'])) {
			$sp = $_GET['SanPham'];
			echo 'Sản phẩm: '.$sp;
		}
	 ?>
</body>
</html>