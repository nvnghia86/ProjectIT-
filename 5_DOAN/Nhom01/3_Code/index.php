<!DOCTYPE html>
<html>
<head>
	<title>Trang Chủ</title>
	<meta charset="utf-8" />
	<link rel="stylesheet" type="text/css" href="./css/style_trangchu.css" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="header">
		<div class="page-header_inner">
			<a id="logo" href="#">
				<img src="images/logokahoot.png" />
			</a>
			<div class="page-menu">
					<ul class="main-menu">
						<li class="sign"><a  class="list-menu" href="admin/dangky.php">Đăng ký</a></li>
						<li class="login"><a  class="list-menu" href="admin/dangnhap.php">Đăng nhập</a></li>
						<li class="play"><a  class="list-menu" href="">Người chơi</a></li>
					</ul>
			</div>
		</div>
	</div>

	<div class="slider">
		<div class="container">
				<div class="row">
					<div class="col-lg-12">
					
					  <div id="myCarousel" class="carousel slide" data-ride="carousel">
					    <!-- Indicators -->
					    <ol class="carousel-indicators">
					      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					      <li data-target="#myCarousel" data-slide-to="1"></li>
					      <li data-target="#myCarousel" data-slide-to="2"></li>
					    </ol>

					    <!-- Wrapper for slides -->
					    <div class="carousel-inner" style="height: 500px;">
					      <div class="item active" style="height: 500px;">
					        <img src="images/slide1.jpg" alt="Los Angeles" style="width:100%; height: 500px;">
					        <div class="carousel-caption">
					          <h3>New York</h3>
					          <p>We love the Big Apple!</p>
					        </div>
					      </div>

					      <div class="item" style="height: 500px;">
					        <img src="images/slide2.jpg" alt="Chicago" style="width:100%; height: 500px;">
					        <div class="carousel-caption">
					          <h3>New York</h3>
					          <p>We love the Big Apple!</p>
					        </div>
					      </div>
					    
					      <div class="item" style="height: 600px;">
					        <img src="images/slide3.jpg" alt="New york" style="width:100%; height: 600px;">
					        <div class="carousel-caption">
					          <h3>New York</h3>
					          <p>We love the Big Apple!</p>
					        </div>
					      </div>
					    </div>

					    <!-- Left and right controls -->
					    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
					      <span class="glyphicon glyphicon-chevron-left"></span>
					      <span class="sr-only">Previous</span>
					    </a>
					    <a class="right carousel-control" href="#myCarousel" data-slide="next">
					      <span class="glyphicon glyphicon-chevron-right"></span>
					      <span class="sr-only">Next</span>
					    </a>
					</div>
				</div>
				<!-- <div class="col-lg-3" style="background: green;">ds</div> -->
			</div>
		</div>
	</div>
	
	<div class="footer">
		<div class="wrapper">
			<ul class="list-footer">
				<div class="col"></div>
				<div class="col"></div>
				<div class="col"></div>
				<div class="col"></div>
				<div class="col"></div>
			</ul>

			<ul class="list-contact"></ul>

			<div class="cpoyright">
				<div class="copyright"></div>
				<div class="copyright-logo"></div>
			</div>
		</div>
	</div>
</body>
</html>