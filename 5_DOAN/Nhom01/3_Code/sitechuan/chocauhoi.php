

<!DOCTYPE html>
<html>
<head>
	<title>Sẵn sàng chơi</title>
	<meta charset="utf-8" />
	<link rel="stylesheet" type="text/css" href="../css/css_site/chocauhoi.css" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="../js/js_site/jquery.countdown360.js"></script>
</head>
<body>
	<div class="page-header">
		<div class="page-header_inner">
			<div id="pin">
				PIN: 423432
			</div>
			<div class="page-name">
				<div class="diem">55</div>
				<div class="ten">abdsadadadadddddddddddc</div>
			</div>
		</div>
	</div>

	<div class="content" style="background: #be39bf;">
		<div class="container">
			<div class="row">
				<div class="col-lg-2"></div>
				<div class="col-lg-8">
					<div class="noidung1">
						<p class="ready">Câu hỏi 1</p>
						<div id="countdown"></div>
						<br /><p class="load">Loadding...</p>
					</div>
				</div>
				<div class="col-lg-2"></div>
			</div>
		</div>
	</div>
</body>
</html>
<script type="text/javascript" charset="utf-8">

		 	var countdown =  $("#countdown").countdown360({
       	 	radius      : 60,
         	seconds     : 3,
         	fontColor   : '#FFFFFF',
         	autostart   : false,
         	onComplete  : function () { console.log('done') 
         window.location="./chondapan.php";}
		   });
			countdown.start();


</script>

