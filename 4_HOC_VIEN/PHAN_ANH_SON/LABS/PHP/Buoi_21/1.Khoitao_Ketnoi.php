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
    }
catch(PDOException $e)
    {
    echo "Kết nối đến CSDL thất bại, Lỗi: " . $e->getMessage();
    }
?> 