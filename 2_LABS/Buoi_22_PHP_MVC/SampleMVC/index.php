<?php
require_once('Configs/Config.php');
require_once('Controllers/HocVienController.php');

$Controller = new HocVienController();
$Controller->showDanhSach();

?>