<?php
	$servername = "p01.vinahost.vn";
	$username = "qxfbg_vnh";
	$password = "Hdez3!14";
	$dbname = "qxfbgkqd_haf";
	
try{
	$conn = new PDO("mysql:host=$servername; dbname=$dbname", $username, $password);
	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	echo "Ket noi thanh cong";
	$stmt = $conn->prepare("SELECT * FROM test_hocvien");
	$stmt->execute();
	$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
	echo "<pre>";
	print_r($result);
	$conn=null;		
}
catch(PDOException $e)
{
	echo "Ket noi that bai" . $e->getMessage();
}
?>