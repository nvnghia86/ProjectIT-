<h2>Biến $_GET</h2>
<?php
	if(isset($_GET['SANPHAM'])){
		$sp = $_GET['SANPHAM'];
		echo 'Sản phẩm: '.$sp;
	}
?>