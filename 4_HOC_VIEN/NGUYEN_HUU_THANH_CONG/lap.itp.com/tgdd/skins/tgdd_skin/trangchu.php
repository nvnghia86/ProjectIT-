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
				<div class="tieu-de">
					<h2>PHỤ KIỆN GIÁ RẺ</h2>
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
					<li class="sp-thuong">
						<a href="#">
							<img src="skins/tgdd_skin/images/product/dt2.jpg" />
							<h3>Samsung Galaxy A6 (2018)</h3>
							<p class="gia">24.000.000đ</p>
							<p class="khuyenmai"> Giảm 600.000đ qua quà tặng Galaxy và 5 phụ kiện đi kèm</p>
							<label class="tragop">Trả góp 0%</label>
						</a>
					</li>
					<li class="sp-thuong">
						<a href="#">
							<img src="skins/tgdd_skin/images/product/dt3.jpg" />
							<h3>Samsung Galaxy A6 (2018)</h3>
							<p class="gia">24.000.000đ</p>
							<p class="khuyenmai"> Giảm 600.000đ qua quà tặng Galaxy và 5 phụ kiện đi kèm</p>
							<label class="tragop">Trả góp 0%</label>
						</a>
					</li>
					<li class="sp-thuong">
						<a href="#">
							<img src="skins/tgdd_skin/images/product/dt1.jpg" />
							<h3>Samsung Galaxy A6 (2018)</h3>
							<p class="gia">24.000.000đ</p>
							<p class="khuyenmai"> Giảm 600.000đ qua quà tặng Galaxy và 5 phụ kiện đi kèm</p>
							<label class="tragop">Trả góp 0%</label>
						</a>
					</li>
					<li class="sp-thuong">
						<a href="#">
							<img src="skins/tgdd_skin/images/product/dt2.jpg" />
							<h3>Samsung Galaxy A6 (2018)</h3>
							<p class="gia">24.000.000đ</p>
							<p class="khuyenmai"> Giảm 600.000đ qua quà tặng Galaxy và 5 phụ kiện đi kèm</p>
							<label class="tragop">Trả góp 0%</label>
						</a>
					</li>
					<li class="sp-thuong">
						<a href="#">
							<img src="skins/tgdd_skin/images/product/dt3.jpg" />
							<h3>Samsung Galaxy A6 (2018)</h3>
							<p class="gia">24.000.000đ</p>
							<p class="khuyenmai"> Giảm 600.000đ qua quà tặng Galaxy và 5 phụ kiện đi kèm</p>
							<label class="tragop">Trả góp 0%</label>
						</a>
					</li>
				</ul>
			
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