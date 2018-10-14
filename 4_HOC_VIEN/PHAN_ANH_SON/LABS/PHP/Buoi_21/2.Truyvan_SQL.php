 <?php
$servername = "p01.vinahost.vn";
$username = "qxfbg_vnh";
$password = "Hdez3!14";
$dbname = "qxfbgkqd_haf";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Kết nối thành công đến CSDL";
	
	$stmt = $conn->prepare("SELECT * FROM test_hocvien;");
	$stmt->execute();
	$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
	echo "<pre>";
	print_r($result);
	$conn = null;
}catch(PDOException $e){
	echo "Kết nối thất bại, Lỗi: ".$e->getMessage();
}
?> 