<?php
	$servername = "p01.vinahost.vn";
	$username = "qxfbg_vnh";
	$password = "Hdez3!14";
	$dbname = "qxfbgkqd_haf";
	
try{
	$conn = new PDO("mysql:host=$servername; dbname=$dbname", $username, $password);
	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	echo "Ket noi thanh cong";
}
catch(PDOException $e)
{
	echo "Ket noi that bai" . $e->getMessage();
}
?>