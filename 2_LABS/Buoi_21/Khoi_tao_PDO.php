<?php 
$servername = "p01.vinahost.vn";
$username ="qxfbg_vnh";
$password ="Hdez3!14";
$dbname = "qxfbgkqd_haf";
try
{
	$conn = new PDO("mysql:host=$servername; dbname=$dbname", $username,$password);
	$conn-> setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
	echo "Kết nối thành công";

	/*Thực hiện truy vấn*/
	/*Tạo lệnh truy vấn*/
	$stmt = $conn-> prepare("Select * from test_hocvien");
	/*Thực thi truy vấn*/
	$stmt -> execute();
	$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
	echo "<pre>";
	print_r($result);

	/*Đóng kết nối*/
	$conn = null;
}
catch(PDOExeption $e)
{
	echo "Kết nối thất bại".$e->getMessage();
}
 ?>

