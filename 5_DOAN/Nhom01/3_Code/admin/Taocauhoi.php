<!DOCTYPE html>
<html>
<head>
	<title>Câu hỏi</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="../css/css_admin/question.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
</head>
<body>
	<!--Header-->
<div class="header">
	<div class="logo">
		<button type="button" class="close" aria-label="Close">
  			<span aria-hidden="true">&times; Close</span>
		</button>
	</div>

	<div class="center">K!Question 1
</div>

	<div class="menu">
		<a href="../admin/themcauhoi.php" id="tieptuc">
			<button class="btn btn-success">Tiếp tục</button>
		</a>
	</div>
</div>
<!--Content-->
<div class="content">
	
		<input type="hidden" name="id" value="<?=$id?>">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
					  <label for="tieu_de">Câu hỏi (Bắt buộc)</label>
					  <input type="text" class="form-control" id="tieu_de" name="tieu_de" placeholder="Thêm câu hỏi..." />
					</div>

					<div class="form-group">
					  <label for="mo_ta">Mô tả</label>
					  <textarea rows="3" class="form-control" id="mo_ta" name="mo_ta" placeholder="Thêm mô tả câu hỏi..."></textarea>
					</div>

					<div class="row">
						<div class="col-lg-6">
							<div class="form-group">
							  <label for="thoi_gian">Thời gian</label>
							  <select class="form-control" id="thoi_gian" name="thoi_gian">
							    <option>5 giây</option>
							    <option>10 giây</option>
							    <option>20 giây</option>
							    <option>30 giây</option>
							    <option>60 giây</option>
							    <option>90 giây</option>
							    <option>120 giây</option>
							  </select>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<p><b>Hình ảnh</b></p>
					<div class="row">
						<div class="col-lg-12 content-ha">
							<table class="tbl">
							<tr>
								<td class="nd" align="center">
									<p>Tải lên hình ảnh của bạn</p>
									<input type="file" name="hinh_anh" id="hinh_anh" />
								</td>
							</tr>
						</table>
						</div>
					</div>
				</div>
			</div>

			<div class="row" style="margin-top: 20px;">
				<div class="col-lg-12">
					<div class="row">
						<div class="col-lg-5">
							<div class="form-group">
							  <label for="dap_an_1">Đáp án 1 (Bắt buộc)</label>
							  <input type="text" class="form-control" id="dap_an_1" name="dap_an_1">
							</div>
						</div>

						<div class="col-lg-1">
							<button class="btn btn-primary btn-circle click" onclick="doimau(1);" id="click1">
			          			<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
			        		</button>
						</div>

						<div class="col-lg-5">
							<div class="form-group">
							  <label for="dap_an_2">Đáp án 2 (Bắt buộc)</label>
							  <input type="text" class="form-control" id="dap_an_2" name="dap_an_2">
							</div>
						</div>

						<div class="col-lg-1">
							<button class="btn btn-primary btn-circle click" onclick="doimau(2);" id="click2">
			          			<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
			        		</button>
						</div>
					</div>

					<div class="row">
						<div class="col-lg-5">
							<div class="form-group">
							  <label for="dap_an_3">Đáp án 3 (Bắt buộc)</label>
							  <input type="text" class="form-control" id="dap_an_3" name="dap_an_3">
							</div>
						</div>

						<div class="col-lg-1">
							<button class="btn btn-primary btn-circle click" onclick="doimau(3);" id="click3">
			          			<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
			        		</button>
						</div>

						<div class="col-lg-5">
							<div class="form-group">
							  <label for="dap_an_4">Đáp án 4 (Bắt buộc)</label>
							  <input type="text" class="form-control" id="dap_an_4" name="dap_an_4">
							</div>
						</div>

						<div class="col-lg-1">
							<button class="btn btn-primary btn-circle click" onclick="doimau(4);" id="click4" >
			          			<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
			        		</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	
	</div>


</body>
</html>

	<script type="text/javascript">
	
	function doimau(giatri) {
		if (giatri==1) {
			document.getElementById('click4').style.background = "#737373";
			document.getElementById('click2').style.background = "#737373";
			document.getElementById('click3').style.background = "#737373";
			document.getElementById('click1').style.background = "#478628";
		}else
		if (giatri==2) {
			document.getElementById('click1').style.background = "#737373";
			document.getElementById('click3').style.background = "#737373";
			document.getElementById('click4').style.background = "#737373";
			document.getElementById('click2').style.background = "#478628";
		}else

		if (giatri==3) {
			document.getElementById('click1').style.background = "#737373";
			document.getElementById('click2').style.background = "#737373";
			document.getElementById('click4').style.background = "#737373";
			document.getElementById('click3').style.background = "#478628";
		}else

		if (giatri==4) {
			document.getElementById('click1').style.background = "#737373";
			document.getElementById('click2').style.background = "#737373";
			document.getElementById('click3').style.background = "#737373";
			document.getElementById('click4').style.background = "#478628";
		}
		

	}
</script>