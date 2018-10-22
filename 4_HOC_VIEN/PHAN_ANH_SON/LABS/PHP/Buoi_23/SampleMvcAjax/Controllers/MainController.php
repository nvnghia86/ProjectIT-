<?php
require_once("Models/KHACH_HANG.php");

class MainController{
	
	public function viewDefault(){
		require('Views/Default.php');
	}

}

$Controller  = new MainController();
	
?>