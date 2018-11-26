<html>
	<head>
		<meta charset="utf-8" />
		<title>Trang chủ | Thế giới di động</title>
		<link href="<?php echo AppObject::getBaseFile('skins/cahd_skin/assets/css/bootstrap.min.css') ?>" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="<?php echo AppObject::getBaseFile('libs/jquery/jquery-3.3.1.min.js') ?>"></script>
        <script type="text/javascript" src="<?php echo AppObject::getBaseFile('skins/cahd_skin/assets/js/core/libraries/bootstrap.min.js') ?>"></script>
		<link rel="stylesheet" href="skins/tgdd_skin/css/style.css" />
	</head>
	<body>
		<div id="header">
			<?php include('modules/header/tgdd_header.php') ?>
		</div>
		<div id="content" class="wrapper">
			<div id="line-1">
				<div id="slider">
					<?php include('modules/sliders/slider_trangchu.php') ?>
				</div>
				<div id="adv-1">
					<?php include('modules/quangcao/quangcao_trangchu.php') ?>
				</div>
			</div>
			<div class="giasoc-cuoituan">
				<?php include('modules/sanpham/mod_sanpham_giasoc.php') ?>
			</div>	
			<div class="product-cat">
				<?php include('modules/sanpham/mod_dienthoai_noibat.php') ?>
			</div>
			<div class="product-cat">
				<?php include('modules/sanpham/mod_mtb_noibat.php') ?>
			</div>
			
			<div class="product-cat">
				<?php include('modules/sanpham/mod_sanpham_phukiengiare.php') ?>
			</div>
			<div id="promotion">
				<h2>KHUYẾN MÃI TẠI CÁC WEBSITE THÀNH VIÊN</h2>
				<ul>
					<li><a href="#"><img  src="skins/tgdd_skin/images/khuyenmai/km1.png" /></a></li></li>
					<li><a href="#"><img  src="skins/tgdd_skin/images/khuyenmai/km2.png" /></a></li></li>
					<li><a href="#"><img  src="skins/tgdd_skin/images/khuyenmai/km3.jpg" /></a></li></li>
				</ul>
			</div>	
		</div>
			
		</div>
	</body>
</html>