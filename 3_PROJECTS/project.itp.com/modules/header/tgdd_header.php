<?php 

$DB = new MySQLHelper();
$_rs = $DB->callProcedure('p_ht_dm_menu_find_all');
//echo "<pre>";
//print_r($_rs);

?>



<div class="wrapper">
	<a href="/"><div id="logo"></div><a>
	<div id="search">
		<input type="text" size="30" placeholder="Bạn tìm gì..." id="txtSearch" />
		<i class="search-icon"></i>
	</div>
	<ul id="main-menu">
		<?php
			for($i=0; $i< count($_rs); $i++){
				$item = $_rs[$i];
		?>
		<li>
			<i class="<?=$item['icon']?>"></i>
			<?=$item['tieude']?>
		</li>
		<?php } ?>
		<li class="simso">Sim số <br/> Thẻ cào</li>
		<li class="thecao">Đóng tiền điện, nước trả góp</li>
	</ul>
</div>