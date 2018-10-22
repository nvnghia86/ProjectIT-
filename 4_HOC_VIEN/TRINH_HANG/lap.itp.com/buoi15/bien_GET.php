<h1>Biến $_GET</h1>
<?php
//bien_GET.php?SANPHAM=DIENTHOAI
if (isset($_GET['SANPHAM'])) {
	$sp = $_GET['SANPHAM'];
	echo 'Sản phẩm '.$sp;
}
?>