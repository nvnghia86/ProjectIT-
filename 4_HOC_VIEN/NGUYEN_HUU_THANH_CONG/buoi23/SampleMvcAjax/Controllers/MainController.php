<?php
require_once("Models/Ch_SanPham.php");

class MainController{
	
	public function viewDefault(){
		require('Views/Default.php');
	}

}

$Controller  = new MainController();
	
?>