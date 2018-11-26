<?php
$DB = new MySQLHelper();
$data = $DB->callProcedure('p_ch_sanpham_phukiengiare');
//echo "<pre>";
//print_r($data);
?>

<div class="tieu-de">
	<h2>PHỤ KIỆN GIÁ RẺ</h2>
	<div class="ds-danhmuc">
		<a href="#"></a>
		<a href="#"></a>
		<a href="#"></a>
		<a href="#"></a>
		<a href="#"></a>
		<a href="#"></a>
	</div>
</div>
<?php
for($i=0; $i< count($data);$i++){
	$dong = $data[$i];
	?>
	<ul class="ds-sanpham">
		<li class="sp-thuong">
			<a href="#">
				<img src="media/upload_tgdd/sanpham/<?=$dong['hinhanh']==null?"noimage.png":$dong['hinhanh']?>" />
				<h3><?=$dong['ten']?></h3>
				<p class="gia"><?=$dong['gia_ban']?></p>
			</a>
		</li>
		<?php
	}
	?>
</ul>

