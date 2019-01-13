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
	<!--Header-->
<div class="header">
	<div class="logo">
		<button type="button" class="close" aria-label="Close">
  			<span aria-hidden="true">&times; Close</span>
		</button>
	</div>

	<div class="center">K!Quiz
</div>

	<div class="menu">
			<button class="btn btn-success">OK, Go</button>
	</div>
</div>
<!--Content-->
<div class="content">
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<div class="form-group">
				  <label for="usr">Title  (required)</label>
				  <input type="text" class="form-control" id="usr">
				</div>

				<div class="form-group">
				  <label for="comment">Description (required)</label>
				  <textarea class="form-control" rows="5" id="comment"></textarea>
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
				  <label for="Visible ">Visible to</label>
				  <select class="form-control" id="Visible ">
				    <option>Only me</option>
				    <option>Everyone</option>
				  </select>
				</div>
			</div>

			<div class="col-lg-4">
				<div class="form-group">
				  <label for="Language">Visible to</label>
				  <select class="form-control" id="Language">
				    <option>Vietnamese</option>
				    <option>English</option>
				  </select>
				</div>
			</div>

			<div class="col-lg-4">
				<div class="form-group">
				  <label for="sel1">Audience  (required)</label>
				  <select class="form-control" id="sel1">
				    <option>Please select...</option>
				    <option>School</option>
				    <option>University</option>
				    <option>Business</option>
				    <option>Training</option>
				    <option>Event</option>
				    <option>Social</option>
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


</body>
</html>