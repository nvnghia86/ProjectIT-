<?php
  date_default_timezone_set('Asia/Ho_Chi_Minh');
		$gio=date("H");
		if($gio<11)
		{
			echo "chuc ban buoi sang tot lanh";
		}
		else if($gio<13)
		{ 
			echo "chuc ban bua trua vui ve";
		}
		else if($gio<17)
		{
			echo "chuc bạn buoi chieu vui ve";
		}
		else if($gio<22)
		{
			echo "chuc ban buoi toi tot lanh";
		}
		else
		{
			echo "chuc ban ngu ngon";
		}
?>