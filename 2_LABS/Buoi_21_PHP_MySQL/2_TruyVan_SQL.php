<?php
// File: KhoiTao_KetNoi.php
$servername = "p01.vinahost.vn"; /* Địa chỉ DB */
$username = "qxfbg_vnh"; /* Tài khoản truy cập DB */
$password = "Hdez3!14"; /* Mật khẩu truy cập DB */
$dbname = "qxfbgkqd_haf"; /* Tên DB cần truy cập */

try{
	/* Bước 1: Khởi tạo kết nối tới DB */
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // Cấu hình chế độ thông báo lỗi cho DB
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "<p>Ket noi thanh cong den CSDL</p>";
	
	/* Bước 2: Thực hiện truy vấn */
	/* Tạo 1 lệnh truy vấn */
	$stmt = $conn->prepare("SELECT * FROM test_hocvien;"); 
	/* Thực thi truy vấn */
    $stmt->execute();
	/* Lấy dữ liệu trả về */
	$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
	echo "<pre>";
	print_r($result);
	
	/* Bước 3: Giải phóng kết nối */
	$conn = null;
}
catch(PDOException $e)
{
	echo "Ket noi that bai, Loi: " . $e->getMessage();
}
?>