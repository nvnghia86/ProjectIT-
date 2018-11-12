<?php
$DB = new MySQLHelper();
$data = $DB->callProcedure('p_ch_sanpham_find_giasoc');
//echo "<pre>";
//print_r($data);
?>

<?php
for($i=0; $i< count($data);$i++){
	$dong = $data[$i];
?>
<div class="sanpham">
<a href="#">
	<img src="media/upload_tgdd/sanpham/<?=$dong['hinhanh']?>" />
	<label class="giamgia"> GIẢM <?=$dong['giamgia']?></label>
	<h3><?=$dong['ten']?></h3>
	<p class="gia" ><?=$dong['gia_ban']?>đ</p>
	<div class="khuyenmai">
		<?=$dong['khuyenmai']?>
	</div>
</a>
</div>
<?php
}
?>