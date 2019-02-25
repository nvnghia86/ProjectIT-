<?php
require "../core/MySQLHelper.php";
$DB= new MySQLHelper();
$id = isset($_REQUEST['id'])?$_REQUEST['id']:'0';
$baithi = null;
if($id !='0'){
	try {
		
		$params = array($id);
		$ketqua =$DB->callProcedure('p_baithi_get_byid(?)',$params);
		$baithi = $ketqua[0];
		//print_r($baithi);
		//echo '<pre>';
		

	} catch (Exception $e) {
		header("Location: loi.php?thongbao= Lỗi: ".$e->message);
		exit;	
	}
}
$taikhoan = $DB->callProcedure('p_tai_khoan_find_all()');

?>

<!DOCTYPE html>
<html>
<head>
	<title>Tạo bài thi</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../css/style.css" />
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="../css/taobaithi.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
</head>
<body>
<form method="post" action="Taodethi_act.php">
	<input type="hidden" name="id" value="<?=$id?>">
	<!--Header-->
<div class="header">
	<div class="logo">
		<a href="../admin/Danhsachde.php">
			<button type="button" class="close" aria-label="Close">
	  			<span aria-hidden="true">&times; Close</span>
			</button>
		</a>
	</div>

	<div class="center">K!Quiz
</div>

	<div class="menu">
		<button class="btn btn-success" type="submit" name="nut_taode" value="luu">Lưu đề</button>  
		<button class="btn btn-success" type="submit" name="nut_taode" value="luu_them">Lưu đề & thêm mới </button>
	</div>
</div>
<!--Content-->
<div class="content">
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<div class="form-group">
				  <label for="usr">Tiêu đề  (bắt buộc)</label>
				  <input type="text" class="form-control" id="usr" name="tieu_de" value="<?=$baithi['tieu_de']?>">
				</div>

				<div class="form-group">
				  <label for="comment">Mô tả (required)</label>
				  <textarea class="form-control" rows="5" id="comment" name="mo_ta"><?=$baithi['mo_ta']?></textarea>
				</div>
			</div>
		<div class="col-lg-6">
			<p>Cover image</p>
				<div class="row">
					<div class="col-lg-12 content-ha">
						<table class="tbl">
							<tr height="50px">
								<td colspan="5"></td>
							</tr>

							<tr>
								<td class="nd1"></td>
								<td class="nd">Image Library by Getty Images</td>
								<td></td>
								<td class="nd">Upload Your Image</td>
								<td class="nd1"></td>
							</tr>

							<tr>
								<td></td>
								<td class="nd">
									<button type="file" class="btn">
										<img src="../images/ha1.png" />
									</button>
								</td>
								<td></td>
								<td class="nd">
									<button type="file" class="btn">
										<img src="../images/ha2.png" />
									</button>
								</td>
								<td></td>
							</tr>

							<tr>
								<td></td>
								<td align="center">
										<span class="new">&nbsp; New! &nbsp;</span>
								</td>
								<td></td>
								<td></td>
								<td></td>
							</tr>

							 <tr>
								<td colspan="5" align="center">or drag & drop image</td>
							</tr>

							<tr height="50px">
								<td colspan="5"></td>
							</tr>
						</table>
					</div>
				</div>
		</div>
	</div>

	<div class="row" style="margin-top: 20px">
			<div class="col-lg-4">
				<div class="form-group">
				  <label for="Visible ">Trạng thái</label>
				  <select class="form-control" id="Visible " name="trang_thai">
				    <option value="1" <?=$baithi['trang_thai']=='1'?'selected':''?>>Công khai với mọi người</option>
				    <option value="0" <?=$baithi['trang_thai']=='0'?'selected':''?>>Xem chế độ riêng tư</option>
				  </select>
				</div>
			</div>

			<div class="col-lg-4">
				<div class="form-group">
				  <label for="Language">Mã PIN</label>
				  <input type="text" placeholder="Nhập mã PIN" class="form-control" name="ma_pin" value="<?=$baithi['ma_pin']?>"/>
				</div>
			</div>

			<div class="col-lg-4">
				<div class="form-group">
				  <label for="sel1">Tác giả</label>
				  <select class="form-control" id="id_tai_khoan" name="id_tai_khoan">
				    <?php 
				    	for ($i=0; $i < count($taikhoan); $i++) { 
				    		$dong = $taikhoan[$i];
				    ?>
				    	<option value="<?=$dong['id']?>"><?=$dong['ho_ten']?></option>
				    <?php } ?>
				  </select>
				</div>
			</div>
	</div>

		<div class="row">
				<div class="col-lg-12">
					<div class="form-group">
					  <label for="comment">Credit resources</label>
					  <textarea class="form-control" rows="5" id="comment"></textarea>
					</div>

					<div class="form-group">
					  <label for="video">Intro video</label>
					  <input type="text" class="form-control" id="video">
					</div>
				</div>
		</div>
	</div>
</div>

</form>
</body>
</html>