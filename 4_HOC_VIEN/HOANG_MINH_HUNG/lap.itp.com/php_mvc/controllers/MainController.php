<?php
require_once("Models/THANH_VIEN.php");

class MainController{
	
	public function viewDefault(){
		require('Views/Default.php');
	}

}

$Controller  = new MainController();
	
?>