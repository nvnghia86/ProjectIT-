<?php
define("UPLOAD_FOLDER","hinhanh/");
$tenfile = $_GET['file'];
$duongdan = UPLOAD_FOLDER.$tenfile;
unlink($duongdan);
header('Location: danhsach.php');
?>