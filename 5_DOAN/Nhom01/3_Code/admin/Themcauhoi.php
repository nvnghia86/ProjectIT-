
<!DOCTYPE html>
<html>
<head>
	<title>Câu hỏi</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="../css/css_admin/cauhoi.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
</head>
<body>
	<!--Header-->
<div class="header">
	<div class="logo">
		<a href="../admin/danhsachde.php">
			<button type="button" class="close" aria-label="Close">
	  			<span aria-hidden="true">&times; Thoát</span>
			</button>
		</a>
	</div>

	<div class="center">K!Quiz</div>

	<div class="menu">
		<a href="../admin/danhsachde.php">
			<button class="btn btn-success"><b>Lưu</b></button>
		</a>
	</div>
</div>

<div class="content">
	<div class="container ">
		<div class="row">
			<div class="col-lg-4">
				<div class="content-title">Mô tả</div>
				<div class="content-ha">
					<img src="../images/ha3.png" />
				</div>
				<div class="content-nd">
					<p>dsda</p>
					<p>dsda</p>
					<p>dsda</p>
				</div>
			</div>
			<div class="col-lg-4"></div>
		</div>

		<div class="row">
			<div class="col-lg-12 row-game"><b>Người tạo trò chơi</b></div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<table class="table table-bordered table-hover">
				    <thead>
				      <tr>
				        <th>STT</th>
				        <th>Câu hỏi</th>
				        <th>Thời gian</th>
				        <th colspan="2">Thao tác</th>
				      </tr>
				    </thead>

				    <tbody>
				      <tr>
				        <td width="5%" align="center">1</td>
				        <td>Câu hỏi 1</td>
				        <td width="10%" align="center">5 giây</td>
				        <th width="5%">
				        	<button class="btn btn-success">Sửa</button>
				        </th>
				        <th width="5%">
				        	<button class="btn btn-danger">Xóa</button>
				        </th>
				      </tr>
				    </tbody>
				</table>
			</div>
		</div> 

		<div class="row">
			<div class="col-lg-12 row-content-game">
				<a href="../admin/taocauhoi.php">
					<button class="btn btn-success btn-cong"><span class="glyphicon " aria-hidden="true">+</span></button>
					<p><b>Thêm câu hỏi</b></p>
				</a>
			</div>
		</div>
	</div>
</div>
</body>
</html>