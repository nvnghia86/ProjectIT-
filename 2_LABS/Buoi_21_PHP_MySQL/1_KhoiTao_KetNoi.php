<?php
// File: KhoiTao_KetNoi.php
$servername = "p01.vinahost.vn"; /* Địa chỉ DB */
$username = "qxfbg_vnh"; /* Tài khoản truy cập DB */
$password = "Hdez3!14"; /* Mật khẩu truy cập DB */
$dbname = "qxfbgkqd_haf"; /* Tên DB cần truy cập */

try{
	/* Khởi tạo 1 kết nối tới DB */
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // Cấu hình chế độ thông báo lỗi cho DB
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Ket noi thanh cong den CSDL"; 
}
catch(PDOException $e)
{
	echo "Ket noi that bai, Loi: " . $e->getMessage();
}
?>