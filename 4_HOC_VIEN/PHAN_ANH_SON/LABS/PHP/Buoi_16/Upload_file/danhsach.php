<?php
	define("UPLOAD_FOLDER","hinhanh/");

?>
<html>
	<head>
		<title>Danh sách upload</title>
		<meta charset="utf-8" />
		<link rel="stylesheet" href="bootstrap.min.css" />
	</head>
	<body>
		<form action="upload.php" enctype="multipart/form-data" method="post">
			<h2>Quản lý file</h2><hr />
			<div class="well row">
				<div class="col-md-6">
					<input type="file" name="uploadfile[]" multiple="multiple" />
				</div>
				<div class="col-md-6">
					<input type="submit" name="submit" value="Upload file" class="btn btn-success btn-sm" />
				</div>
			</div>
			<table class="table table-bordered table-stripped">
		<thead>
			<tr>
				<th>STT</th>
				<th>File</th>
				<th>Tên file</th>
				<th>Download</th>
				<th>Xóa</th>
			</tr>
		</thead>
		<tbody>
		<?php
			$i=0;
			foreach(glob(UPLOAD_FOLDER.'*') as $file){	
			$i++;
		?>
			<tr>
				<td><?=$i?></td>
				<td><img width="100" height="60" src="<?=UPLOAD_FOLDER.basename($file)?>" /></td>
				<td><?=basename($file)?></td>
				<td><a href="<?=UPLOAD_FOLDER.basename($file)?>" target="_blank">Download</a></td>
				<td>
					<a href="xoa.php?file=<?=basename($file)?>" class="btn btn-danger btn-xs">Xóa</a>
				</td>
			</tr>
	<?php
			}
	?>
		</tbody>
	</table>
		</form>
	</body>
</html>