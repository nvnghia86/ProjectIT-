<h2>Biến $_GET</h2>
<?php
	if(isset($_GET['SAN_PHAM'])){
		$sp = $_GET['SAN_PHAM'];
		echo "sản phẩm".$sp;
	}
?>