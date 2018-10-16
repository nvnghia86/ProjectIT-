<?php

class RouterHelper{
	
	public $Controller;
	public $View;
	public $Action;
	
	public function __construct(){
		$this->Controller = isset($_GET['controller'])?$_GET['controller']:DEFAULT_CONTROLLER;
		$this->View = isset($_GET['view'])?$_GET['view']:DEFAULT_VIEW;
		$this->Action = isset($_GET['action'])?$_GET['action']:null;
	}
	
	public function router(){
		
		if(!file_exists('Controllers/'.$this->Controller.'Controller.php')){
			die('Không tìm thấy controller hợp lệ');
		}
		
		require_once('Controllers/'.$this->Controller.'Controller.php');
		
		if($this->Action != null){
			if(!method_exists($Controller,'act'.$this->Action)){
				die('Không tìm thấy Action hợp lệ');
			}
			$Controller->{'act'.$this->Action}();
		}
		
		if(!method_exists($Controller,'view'.$this->View)){
			die('Không tìm thấy View hợp lệ');
		}
		$Controller->{'view'.$this->View}();
		
	}
	
}

?>