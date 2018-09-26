 <h2>Biến $_SESSION</h2>

 <?php
	/* Khởi tạo 1 session mới */
	session_start();
	$click = "";
	if(!isset($_SESSION['dem'])){
		$_SESSION['dem'] = 0;
		
	}else{
		$_SESSION['dem'] ++;
	}
	echo "Số lượt Click: ".$_SESSION['dem'];
	print('<pre>');
	print_r($_SESSION);
 ?>