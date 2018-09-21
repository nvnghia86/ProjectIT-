<?php

define("UPLOAD_FOLDER","hinhanh/");

foreach ($_FILES['uploadfile']['name'] as $f => $name) {
	$duongdan = UPLOAD_FOLDER.$name;
	$tmp_name = $_FILES['uploadfile']['tmp_name'][$f];
    move_uploaded_file($tmp_name, $duongdan);
}

header('Location: danhsach.php');


?>