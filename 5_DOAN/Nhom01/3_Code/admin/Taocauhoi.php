<!DOCTYPE html>
<html>
<head>
	<title>Câu hỏi</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../css/style.css" />
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="../css/question.css" />
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

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
			<button class="btn btn-success">Next</button>
	</div>
</div>
<!--Content-->
<div class="content">
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<div class="form-group">
				  <label for="usr">Question (required)</label>
				  <input type="text" class="form-control" id="usr">
				</div>

				<div class="row">
					<div class="col-lg-6">
						<div class="form-group">
						  <label for="time">Time limit</label>
						  <select class="form-control" id="time">
						    <option>5 Sec</option>
						    <option>10 Sec</option>
						    <option>20 Sec</option>
						    <option>30 Sec</option>
						    <option>60 Sec</option>
						    <option>90 Sec</option>
						    <option>120 Sec</option>
						  </select>
						</div>
					</div>
					<div class="col-lg-6">
						<p>Award points</p>
						<input id="checkbox1" type="checkbox" checked>
						<label for="checkbox1" data-text-true="Yes" data-text-false="No"><i></i></label>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<p>Cover image</p>
				<div class="row">
					<div class="col-lg-12 content-ha">
						<table class="tbl">
							<tr height="50px">
								<td colspan="7"></td>
							</tr>

							<tr>
								<td class="nd1"></td>
								<td class="nd">Image Library by Getty Images</td>
								<td></td>
								<td class="nd">Upload Your Image</td>
								<td ></td>
								<td class="nd">Add Youtube link</td>
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
								<td class="nd">
									<button type="file" class="btn">
										<img src="../images/ha.png" />
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
								<td></td>
								<td></td>
							</tr>

							 <tr>
								<td colspan="7" align="center">or drag & drop image</td>
							</tr>

							<tr height="50px">
								<td colspan="7"></td>
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
						  <label for="question">Answer 1 (required)</label>
						  <input type="text" class="form-control" id="question">
						</div>
					</div>

					<div class="col-lg-1">
						<button class="btn btn-primary btn-circle click" onclick="doimau(1);" id="click1">
		          			<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
		        		</button>
					</div>

					<div class="col-lg-5">
						<div class="form-group">
						  <label for="question">Answer 2 (required)</label>
						  <input type="text" class="form-control" id="question">
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
						  <label for="question">Answer 3 (required)</label>
						  <input type="text" class="form-control" id="question">
						</div>
					</div>

					<div class="col-lg-1">
						<button class="btn btn-primary btn-circle click" onclick="doimau(3);" id="click3">
		          			<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
		        		</button>
					</div>

					<div class="col-lg-5">
						<div class="form-group">
						  <label for="question">Answer 4 (required)</label>
						  <input type="text" class="form-control" id="question">
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



		<div class="row">
			<div class="col-lg-12">
				<div class="form-group">
				  	<label for="comment">Credit resources</label>
				  	<textarea class="form-control" rows="3" id="comment"></textarea>
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