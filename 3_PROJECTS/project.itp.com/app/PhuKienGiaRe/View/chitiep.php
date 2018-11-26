<?php
$id = $_GET['id'];
$DB = new MySQLHelper();
$data = $DB->callProcedure('p_ch_sanpham_get_byid(?)',array($id));
$sp = $data[0];
//echo "<pre>";
//print_r($data);
?>
<div class="line-1">
		<ul class="product-menu">
			<li><a href="#">Trang chủ</a></li>
			<li class="icon-dau"> > </li></li>
			<li><a href="#">Điện thoại</a></li>
			<li class="icon-dau"> > </li></li>
			<li><a href="#">Sam Sung</a></li>
		</ul>
		<div class="product-name">
			<h2><?=$sp['ten']?></h2>
		</div>

		<div class="product">
			<div class="product-img">
				<div class="image">
					<img width="400" height="460" src="media/upload_tgdd/sanpham/<?=$sp['hinhanh']?>" />
				</div>
				<ul class="product-gt">
					<li>
						<div class="product-gt-sp">
							<img src=" skins/tgdd_skin/images_sanpham/samsung-galaxy-j6-tim-200-3-180x125.png" />
						</div>
						Tím
					</li>
					<li>
						<div class="product-gt-sp">
							<img src=" skins/tgdd_skin/images_sanpham/samsung-galaxy-j6-tim-200-3-180x125.png" />
						</div>
						Đen
					</li>
					<li>
						<div class="product-gt-sp">
							<img src=" skins/tgdd_skin/images_sanpham/samsung-galaxy-j6-tim-200-3-180x125.png" />
						</div>
						Vàng đồng
					</li>
					<li>
						<div class="product-gt-sp"><i id="icon-box"></i></div>
						Mở hộp, k.mãi
					</li>
					<li>
						<div class="product-gt-sp"><i id="icon-camera"></i></div>
						Chụp từ Camera
					</li>
					<li>
						<div class="product-gt-sp"><i id="icon-360"></i></div>
						Hình 360 độ
					</li>
					
				</ul>
				<div class="product-gt-sp-button">
					<div class="product-gt-sp-prev"></div>
					<div class="product-gt-sp-next"></div></div>
				</div>
		</div>


		<div class="product-km">
			<div class="km-gia">
				<h2><?=$sp['gia_ban']?>₫</h2>
			</div>
			<div class="km-gio">
				<i></i><h4>NHẬN HÀNG TRONG 1 GIỜ</h4>
			</div>

			<div class="km-thongtin">
				<h3>KHUYẾN MẠI</h3>
				<?=$sp['khuyenmai']?>
			</div>


			<div class="km-yeucau">
				<input type="checkbox" name="checkbox" />
				<b>Yêu cầu nhân viên kỹ thuật giao hàng:</b> hỗ trợ copy danh bạ, hướng dẫn sử dụng máy mới, giải đáp thắc mắc sản phẩm.
			</div>
			<div class="km-giamgia">
				<img src="skins/tgdd_skin/images_sanpham/ZaloPay-Text@2x.png" />
				Giảm ngay 50% tối đa 250.000đ khi thanh toán qua ZaloPay cho khách hàng mới Click xem chi tiết
			</div>
			<div class="thanhtoan">
				<div class="muangay">
					<button>
						<h3>MUA NGAY</h3>
						<p>Giao trong 1 giờ hoặc nhận tại siêu thị</p>
					</button>
				</div>
				<div class="thanhtoan-km">
					<button>
						<h3>MUA TRẢ GÓP</h3>
						<p>Thủ tục đơn giản</p>
					</button>
				</div>
				<div class="thanhtoan-km-lienhe">
					Gọi đặt mua: 1800.1060 (miễn phí - 7:30-22:00)
				</div>
			</div>
		</div>

		<div class="product-bh">
			<div class="bh-kiemtra">
				<img src="skins/tgdd_skin/images_sanpham/tải xuống.png">
				<a href="#">Kiểm tra có hàng tại nơi bạn ở không?</a>
			</div>
			<div class="bh-kiemtra-tang">
				<div class="bh-kiemtra-tang-1">
					<img src="skins/tgdd_skin/images_sanpham/trong-hop-co@2x.png"><span>Trong hộp có: Pin, Sạc, Tai nghe, Sách hướng dẫn</span>
				</div>
				<hr />
				<div class="bh-kiemtra-tang-1">
					<img src="skins/tgdd_skin/images_sanpham/bao-hanh-chinh-hang@2x.png"><span>Bảo hành chính hãng 12 tháng. Xem chi tiết</span>
				</div>
				<hr />
				<div class="bh-kiemtra-tang-1">
					<img src="skins/tgdd_skin/images_sanpham/1-doi-1@2x.png"><span>1 đổi 1 trong 1 tháng nếu lỗi, đổi sản phẩm tại nhà trong 1 ngày. Xem chi tiết</span>
				</div>
			</div>
			<div class="bh-kiemtra-cu">
				<a href="#">Xem Nokia 3.1 16GB cũ</a>
				<p>Giá dưới: <strong>2.390.000</strong></p>
				<p>Bảo hành tới 11.5 tháng</p>
			</div>
		</div>
</div>