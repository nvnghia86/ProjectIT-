<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Danh sách hình hảnh</title>
	<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
	<style>
		form{ width: 80%; marrgin:0 auto; }
	</style>
</head>
<body>
	<form action="upload.php" method="post">
		<h2>Chọn file</h2>
		<div class='well row'>
			<div class="col-md-6">
				<input type="file" name="uploadfile[]" multiple="multiple" />
			</div>
		<div class="col-md-6">
			<input type="submit" name="submit" value="Upload file" class="btn btn-success btn-sm" />
		</div>
	</div>
		<table>
			<<thead>
				<tr>
					<td>STT</td>
					<td>Hình ảnh</td>
					<td>Tên file</td>
					<td>Dowload</td>
				</tr>
			</thead>
			<tbody>
				<?php 
					$i =0;
					foreach(glob(UPLOAD_FOLDER.'*')as $file){
						$i++;
				 ?>
				<tr>
					<td><?=$i?></td>
					<td><img src="<?=UPLOAD_FOLDER.basename($file)?>"/></td>
					<td><?=basename($file)?></td>
					<td><a href="<?=UPLOAD_FOLDER.basename($file)?>" target="_blank">Dowload</a></td>
				</tr>
			<?php } ?>
			</tbody>

		</table>
	</form>
</body>
</html>