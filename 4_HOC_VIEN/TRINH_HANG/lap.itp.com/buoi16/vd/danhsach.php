<?php
define("UPLOAD_FOLDER","hinhanh/");
?>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Danh sách file Upload</title>
	<link rel="stylesheet" type="text/css" href="bootstrap.min.css"/>
	<style>
		form {width: 80%;margin:0 auto;}
	</style>
</head>
<body>
	<form action="upload.php" enctype="multipart/form-data" method="post">
		<h2>Quản lý file</h2><hr/>
		<div class="well row">
			<div class="col-md-6">
				<input type="file" name="uploadfile[]" multiple="multiple"/>

			</div>
			<div class="col-md-6">
				<input type="submit" name ="submit" value="upload file" class="btn btn-success btn -sm"/>
			</div>
		</div>
		
		
	</form>
	<table></table>
</body>
</html>