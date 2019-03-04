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
	<link rel="stylesheet" type="text/css" href="../css/css_admin/style_danhsachde.css" />
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
</head>
<body>
	<?php include('../modules/admins/Danhsachde/header.php'); ?>
	<div id="content">
			<div class="row">
				<div class="col-lg-3" style="background: #fff;">
					<?php include('../modules/admins/Danhsachde/content-left.php'); ?>
				</div>
				<div class="col-lg-9" style="background: #f2f2f2;">
					<div class="content-right">
						<?php include('../modules/admins/Danhsachde/content-right-search.php'); ?>
						<?php include('../modules/admins/Danhsachde/content-right-ds.php'); ?>
					  	<div class="content-right-ds-nd">
							<?php include('../modules/admins/Danhsachde/content-table.php'); ?>
					  	</div>
					</div>		
				</div>
			</div>
	</div>
	
</body>