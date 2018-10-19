<?php
require_once('Configs/Config.php');
require_once('Controllers/HocvienController.php');
$Controller = new HocvienController();
$Controller->showDanhSach();
?>