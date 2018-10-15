<?php

class BaseController{
	
	public function display($View){
		require("Views/$View");
	}
}

?>