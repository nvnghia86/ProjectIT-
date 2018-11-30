<?php
$DB = new MySQLHelper();
$data = $DB->callProcedure('p_ch_sanpham_find_noibat(?)',[20]);
//echo "<pre>";
//print_r($data);
?>

<div class="tieu-de">
	<h2>MÁY TÍNH BẢNG NỔI BẬT NHẤT</h2>
	<div class="ds-danhmuc">
		<a href="#">Apple Iphone</a>
		<a href="#">Samsung</a>
		<a href="#">Màn hình viền</a>
		<a href="#">Giá từ 3-5 triệu</a>
		<a href="#">Trả góp 0%</a>
		<a href="#">Xem tất cả 174 điện thoại</a>
	</div>
</div>
<ul class="ds-sanpham">
	<li class="sp-tieubieu">
		<a href="?app=gianhang&view=chitiet&id=<?=$data[0]['id_sanpham']?>">
			<img src="media/upload_tgdd/sanpham/<?=$data[0]['hinhanh']==null?"noimage.png":$data[0]['hinhanh']?>" />
			<h3><?=$data[0]['ten']?></h3>
			<p class="gia">Dự kiến: <?=$data[0]['gia_ban']?></p>
			<label class="tragop"></label>
		</a>
	</li>
	<?php
		for($i=1; $i< count($data);$i++){
			$dong = $data[$i];
	  ?>
	<li class="sp-thuong">
		<a href="?app=gianhang&view=chitiet&id=<?=$dong['id_sanpham']?>">
			<img src="media/upload_tgdd/sanpham/<?=$dong['hinhanh']==null?"noimage.png":$dong['hinhanh']?>" />
			<h3><?=$dong['ten']?></h3>
			<p class="gia"><?=$dong['gia_ban']?> đ</p>
			<p class="khuyenmai"> </p>
			<label class="tragop">Trả góp 0%</label>
		</a>
	</li>
	<?php
		}
	  ?>
	
</ul>
