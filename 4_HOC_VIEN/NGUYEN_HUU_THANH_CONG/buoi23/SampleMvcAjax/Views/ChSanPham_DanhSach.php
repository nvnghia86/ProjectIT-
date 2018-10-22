<html>
<head>
	<title>Quản lý sản phẩm</title>
	<meta charset="utf-8" />
</head>
<body>
<h2>Quản lý Sản Phẩm</h2>
<fieldset style="width:400px">
	<legend>Thông tin Sản Phẩm</legend>
	<form method="post" action="?controller=chsanpham&action=luu">
		<table style="width:400px">
			<tr>
				<td>Id Sản Phẩm</td>
				<td>
					<input type="text" size="30" name="Id_SanPham" placeholder="Id Sản Phẩm" value="<?=$this->ChSanPham->Id_SanPham?>" />
				</td>
			</tr>
			<tr>
				<td>Mã</td>
				<td>
					<input type="text" size="30" name="Ma" placeholder="Mã" value="<?=$this->ChSanPham->Ma?>" />
				</td>
			</tr>
			<tr>
				<td>Tên</td>
				<td>
					<input type="text" size="30" name="Ten" placeholder="Tên" value="<?=$this->ChSanPham->Ten?>" />
				</td>
			</tr>
			<tr>
				<td>Gía Nhập</td>
				<td>
					<input type="text" size="30" name="Gia_Nhap" placeholder="Gía Nhập" value="<?=$this->ChSanPham->Gia_Nhap?>" />
				</td>
			</tr>
			<tr>
				<td>Gía Bán</td>
				<td>
					<input type="text" size="30" name="Gia_Ban" placeholder="Giá Bán" value="<?=$this->ChSanPham->Gia_Ban?>" />
				</td>
			</tr>
			<tr>
				<td>Giới Thiệu</td>
				<td>
					<input type="text" size="30" name="GioiThieu" placeholder="Giới Thiệu" value="<?=$this->ChSanPham->GioiThieu?>" />
				</td>
			</tr>
			<tr>
				<td>ID Danh Mục Sản Phẩm</td>
				<td>
					<input type="text" size="30" name="Id_Dm_SanPham" placeholder="ID Danh Mục Sản Phẩm" value="<?=$this->ChSanPham->Id_Dm_SanPham?>" />
				</td>
			</tr>
			<tr>
				<td>ID Danh Mục Bảo Hành</td>
				<td>
					<input type="text" size="30" name="Id_Dm_BaoHanh" placeholder="ID Danh Mục Bảo Hành" value="<?=$this->ChSanPham->Id_Dm_BaoHanh?>" />
				</td>
			</tr>
			<tr>
				<td>ID Danh Mục Đổi Trả</td>
				<td>
					<input type="text" size="30" name="Id_Dm_DoiTra" placeholder="ID Danh Mục Đổi Trả" value="<?=$this->ChSanPham->Id_Dm_DoiTra?>" />
				</td>
			</tr>
			<tr>
				<td>ID Danh Mục Giao Hàng</td>
				<td>
					<input type="text" size="30" name="Id_Dm_GiaoHang" placeholder="ID Danh Mục Giao Hàng" value="<?=$this->ChSanPham->Id_Dm_GiaoHang?>" />
				</td>
			</tr>
			<tr>
				<td>ID Danh Mục Trả Góp</td>
				<td>
					<input type="text" size="30" name="Id_Dm_TraGop" placeholder="ID Danh Mục Trả Góp" value="<?=$this->ChSanPham->Id_Dm_TraGop?>" />
				</td>
			</tr>
			<tr>
				<td>ID Danh Mục Hãng Sản Suất</td>
				<td>
					<input type="text" size="30" name="Id_Dm_Hang_SanSuat" placeholder="ID Danh Mục Hãng Sản Suất" value="<?=$this->ChSanPham->Id_Dm_Hang_SanSuat?>" />
				</td>
			</tr>
			<tr>
				<td>Trạng Thái</td>
				<td>
					<input type="text" size="30" name="TrangThai" placeholder="Trạng thái" value="<?=$this->ChSanPham->TrangThai?>" />
				</td>
			</tr>
		</table>
		<a href="?controller=chsanpham&view=danhsach"><button type="button" name="reset"> Làm mới </button></a>
		<button type="submit" name="submit"> Lưu </button>
		<input type="hidden" name="Id" value="<?=$this->ChSanPham->Id?>" />
	</form>
</fieldset>
<br/>
<fieldset style="width:400px">
	<legend>Tìm kiếm sản phẩm</legend>
	<form method="post" action="?controller=chsanpham&action=tim">
		<input type="text" size="45" placeholder="Tên hoặc mô tả" name="SearchKey" />
		<button type="submit" name="tim"> Tìm kiếm </button>
	</form>
</fieldset>
<br/>
<table border=1 width="1000px" >
	<thead>
		<tr>
			<th>STT</th>
			<th>ID sản phẩm</th>
			<th>Mã</th>
			<th>Tên</th>
			<th>Giá Nhập</th>
			<th>Giá Bán</th>
			<th>Giới Thiệu</th>
			<th>ID danh mục sản phẩm</th>
			<th>ID danh mục bảo hành</th>
			<th>ID danh mục đổi trả</th>
			<th>ID danh mục giao hàng</th>
			<th>ID danh mục trả góp</th>
			<th>ID danh mục hãng sản suất</th>
			<th>Trạng thái</th>
			<th colspan=2>Thao tác</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<?php
				for($i=0;$i<count($this->DanhSach);$i++){
			?>
			<td><?=($i+1)?></td>
			<td><?=$this->DanhSach[$i]['ma']?></td>
			<td><?=$this->DanhSach[$i]['ten']?></td>
			<td><?=$this->DanhSach[$i]['gia_nhap']?></td>
			<td><?=$this->DanhSach[$i]['gia_ban']?></td>
			<td><?=$this->DanhSach[$i]['gioithieu']?></td>
			<td><?=$this->DanhSach[$i]['id_dm_sanpham']?></td>
			<td><?=$this->DanhSach[$i]['id_dm_baohanh']?></td>
			<td><?=$this->DanhSach[$i]['id_dm_doitra']?></td>
			<td><?=$this->DanhSach[$i]['id_dm_giaohang']?></td>
			<td><?=$this->DanhSach[$i]['id_dm_tragop']?></td>
			<td><?=$this->DanhSach[$i]['id_dm_hang_sansuat']?></td>
			<td><?=$this->DanhSach[$i]['trangthai']?></td>
			<td><a href="?controller=chsanpham&view=sua&id=<?=$this->DanhSach[$i]['id_dm_sanpham']?>">Sửa</a></td>
			<td><a href="?controller=chsanpham&action=xoa&id=<?=$this->DanhSach[$i]['id_dm_sanpham']?>">Xóa</a></td>
		</tr>
			<?php } ?>
	</tbody>
</table>
</body>
</html>