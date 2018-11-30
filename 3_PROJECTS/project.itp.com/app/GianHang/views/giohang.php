<?php

if(isset($_SESSION['giohang'])){
	print('<pre>');
	print_r($_SESSION['giohang']);
}else{
	echo "<h2>Giỏ hàng trống</h2>";
}

?>