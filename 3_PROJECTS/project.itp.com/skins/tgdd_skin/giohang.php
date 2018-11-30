<html>
	<head>
		<meta charset="utf-8" />
		<title>Giỏ hàng | Thế giới di động</title>
		<link href="<?php echo AppObject::getBaseFile('skins/cahd_skin/assets/css/bootstrap.min.css') ?>" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="<?php echo AppObject::getBaseFile('libs/jquery/jquery-3.3.1.min.js') ?>"></script>
        <script type="text/javascript" src="<?php echo AppObject::getBaseFile('skins/cahd_skin/assets/js/core/libraries/bootstrap.min.js') ?>"></script>
		<link rel="stylesheet" href="skins/tgdd_skin/css/style.css" />
	</head>
	<body>
		<div id="header">
			<?php include('modules/header/tgdd_header.php') ?>
		</div>
		<div id="content" class="wrapper">
			<?=$content?>
		</div>
			
		</div>
	</body>
</html>