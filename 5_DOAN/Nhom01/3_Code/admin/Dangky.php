<!DOCTYPE html>
<html>
<head>
	<title>Đăng ký tài khoản</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../css/style.css" />
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="../css/style_dangkytaikhoan.css" />
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
</head>
<body>
<div class="header">
	<div class="logo">
		<img src="../images/logokahoot.png" />
	</div>
	<div class="menu">
		<div class="menu-name">
			<em>Already got an account?</em>
		</div>
		<div class="login">
			<a href="../admin/Dangnhap.php"><button class="btn btn-primary">Log in</button></a>
		</div>
	</div>
</div>
<div class="main">
	<span>< Back</span>
</div>
<div class="content">
	<div class="container">
		<div class="row">
		<div class="col-sm-4" ></div>
		<div class="col-sm-4" >
			<h3 align="center">Your account details</h3>
			<div class="form-group">
			  <label for="optional">Add your school or university (optional)</label>
			  <input type="text" class="form-control" id="optional">
			</div>

			<div class="form-group">
			  <label for="required">Workplace details (required)</label>
			  <select class="form-control " id="required">
			    <option>Select one</option>
			    <option>School</option>
			    <option>Higher education</option>
			    <option>School administration</option>
			    <option>Business</option>
			    <option>Other</option>
			  </select>
			</div>

			<div class="row"><div class="col-sm-12" style="height: 30px;"></div></div>
			<hr class="hr">

			<div class="form-group">
			  <label for="optional">Pick a username  (required)</label>
			  <input type="text" class="form-control" id="optional">
			</div>

			<div class="checkbox disabled">
			  <label><input type="checkbox" value="">I have read and agree with the Kahoot! Terms and Conditions. Kahoot! will collect and process data as described in the Privacy Policy and Children's Privacy Policy. (required)</label>
			</div>

			<div class="checkbox disabled">
			  <label><input type="checkbox" value="">I wish to receive information, offers, recommendations and updates from Kahoot!</label>
			</div>

			<div class="checkbox disabled">
			  <label><input type="checkbox" value="">I want Kahoot! to send me information, exclusive invitations and special offers from other companies.</label>
			</div>

			<button type="button" class="btn btn-primary btn-block">Join Kahoot!</button>

			<span>I understand that I can withdraw my consent at any time and the withdrawal will not affect the lawfulness of the consent before its withdrawal, as described in the Kahoot! Privacy Policy.</span>
			
		</div>
		<div class="col-sm-4" ></div>
	</div>
	</div>

</div>

</body>
</html>