<?php for ($i=0; $i < count($ketqua); $i++) { 
	$dong = $ketqua[$i];
	$ngay_tao = (new DateTime($dong['ngay_tao']))->diff(new DateTime("now"))->days;
?>
<div class="table">
	<table class="content-table">
		<tr>
			<td class="content-table-img" rowspan="3">
				<img src=".<?=$dong['hinh_anh']?>" />
			</td>
			<td class="content-table-col1"><h4><?=$dong['tieu_de']?></h4></td>
			<td class="content-table-col2">
				<i class="glyphicon glyphicon-star-empty"></i>
				<i class="glyphicon glyphicon-option-vertical"></i>
			</td>
		</tr>

		<tr>
			<td class="content-table-col1">
				<a href="#"><?=$dong['nguoi_tao']?></a>
			</td>
			<td class="content-table-col2">
			<span>Tạo <?=$ngay_tao?> ngày trước</span>
			</td>
		</tr>

		<tr style="background: #f8f8f8">
			<td class="content-table-col1">
				<i class="glyphicon glyphicon-play-circle"></i>
				<a href="#"><?=$dong['trang_thai']=='1'?"Công khai với mọi người":"Xem riêng tư"?></a>
			</td>
			<td class="content-table-col2">
				<button type="button btn-sm" class="btn btn-success">Chơi</button>
				<button type="button btn-sm" class="btn btn-success">Thử thách</button>
				<a class="btn btn-warning" href="/admin/Taodethi.php?id=<?=$dong['id']?>"> Sửa</a>

				<a class="btn btn-danger" href="/admin/Taodethi_act.php?id=<?=$dong['id']?>&act=xoa"> Xóa</a>
			</td>
		</tr>
	</table>
	<span class="soluongch"><?=$dong['so_cau_hoi']?> Câu hỏi</span>
	<span class="checkch glyphicon glyphicon-ok-circle "></span>
</div>
<?php } ?>