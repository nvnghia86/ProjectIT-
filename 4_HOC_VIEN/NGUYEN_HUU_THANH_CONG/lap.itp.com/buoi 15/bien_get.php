<h2>Biến $_GET</h2>
<?php
	//bien_get.php?SANPHAM=DienThoai
	if(isset($_GET['SANPHAM'])){
	$sp = $_GET['SANPHAM'];
	echo 'Sản phẩm: ' .$sp;
	}
?>