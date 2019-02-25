<?php
require "../core/MySQLHelper.php";
try {
	$key = isset($_REQUEST['key'])?$_REQUEST['key']:'';
	$DB= new MySQLHelper();
	$params = array($key);
	$ketqua =$DB->callProcedure('p_baithi_find_key(?)',$params);

	//echo '<pre>';
	//print_r($ketqua);

} catch (Exception $e) {
	header("Location: loi.php?thongbao= Lỗi: ".$e->message);
	exit;	
}


?>

<!DOCTYPE html>
<html>
<head>
	<title>Danh Sách Đề</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" type="text/css" href="../css/style.css" />
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="../css/style_danhsachde.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
</head>
<body>
	<?php include('../modules/admin_header.php'); ?>

	<div id="content">
			<div class="row">
				<div class="col-lg-3" style="background: #fff;">
					<?php include('../modules/admin_cottrai.php'); ?>
				</div>
				<div class="col-lg-9" style="background: #f2f2f2;">
					<div class="content-right">
						<div class="search">
						  		<form method="get" action="Danhsachde.php" class="navbar-form" role="search">
								    <div class="input-group add-on">
								      	<input class="form-control" placeholder="Tìm kiếm bài thi" name="key" id="srch-term" type="text" value="<?=$key?>">
								      	<div class="input-group-btn">
								      		<button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
								     	</div>
								    </div>
								</form>
						  </div>

						  <div class="content-right-ds">
							  	<div class="row content-right-dong1">
							  		<div class="col-lg-12 content-right-dong">My Kahoots</div>
							  	</div>

							  	<div class="row content-right-dong2">
							  		<div class="col-lg-6 ">
							  			<ul class="row-left">
							  				<li>Kahoots(1)</li>
							  				<li><a href="../admin/Taodethi.php">Create new</a></li>
							  			</ul>
							  		</div>
							  		<div class="col-lg-6 ">
							  			<ul class="row-right">
							  				<li class="glyphicon glyphicon-menu-hamburger"></li>
							  				<li class="glyphicon glyphicon-tasks"></li>
							  			</ul>
							  		</div>
							  	</div>
						  </div>

						  <div class="content-right-ds-nd">
						  	<?php for ($i=0; $i < count($ketqua); $i++) { 
						  		$dong = $ketqua[$i];
						  	?>
						  	<div class="table">
						  		<table class="content-table">
						  			<tr>
						  				<td class="content-table-img" rowspan="3">
						  					<img src="<?=$dong['hinh_anh']?>" />
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
						  					<span>Created 4 days ago</span>
						  					<b> • 2 plays</b>
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

						  </div>
						 
					</div>		
				</div>
			</div>
	</div>
	
</body>