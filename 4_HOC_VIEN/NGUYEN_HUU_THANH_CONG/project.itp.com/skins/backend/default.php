<?php
if (!defined('AREA')) {
    die('Access denied');
}
?>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="<?php echo $meta_keywords; ?>">
        <meta name="description" content="<?php echo $meta_desc; ?>">
        <title><?php echo $page_title; ?></title>
        <link href="<?php echo AppObject::getBaseFile('libs/bootstrap/css/bootstrap.min.css') ?>" rel="stylesheet" media="screen">
        <link href="<?php echo AppObject::getBaseFile('public/css/base.css') ?>" rel="stylesheet" media="screen">
        <link href="<?php echo AppObject::getBaseFile('skins/backend/css/style.css') ?>" rel="stylesheet" media="screen">
        <script src="<?php echo AppObject::getBaseFile('public/js/jquery.js') ?>"></script>
        <script src="<?php echo AppObject::getBaseFile('libs/bootstrap/js/bootstrap.min.js') ?>"></script>
        <script src="<?php echo AppObject::getBaseFile('skins/backend/js/default.js') ?>"></script>
        <script src="<?php echo AppObject::getBaseFile('skins/backend/js/scripts.js') ?>"></script>
    </head>
    <body>
        <div class="overlay" style="display:none;">
            <div id="dialog-box">
                <div id="dialog-icon" class=""></div>
                <h4 class="dialog-title">Đang xử lý...</h4>
                <p class="dialog-messeage"></p>
                <button type="button" class="btn btn-xs btn-danger dialog-btn" style="display:none;" onclick="dialogMesseage.hide()">x</button></h4>
            </div>
        </div>
		<h2><img class="app_logo" src="<?=AppObject::getBaseFile('skins/backend/images/logo-phutho.jpg') ?>" height="50" />  TRƯỜNG CAO ĐẲNG NGHỀ PHÚ THỌ</h2>
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Hệ thống quản lý SMS</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
					<li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"> 
						<i class="glyphicon glyphicon-book"></i> Danh bạ <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li>
								<a href="?app=sms_danhba&view=view_nhom&task=view_nhom">
									<i class="glyphicon glyphicon-list-alt"></i>  
									Quản lý nhóm danh bạ</a>
							</li>
                            <li>
								<a href="?app=sms_danhba&view=danhba&task=view_danhba">
									<i class="glyphicon glyphicon-phone"></i>  
									Quản lý danh bạ</a>
							</li>
                            <li>
                                <a href="?app=sms_danhba&task=import_danhba">
                                    <i class="glyphicon glyphicon-import"></i>  
                                    Import danh bạ từ file excel</a>
                            </li>
                            
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"> 
						<i class="glyphicon glyphicon-inbox"></i> Tin nhắn <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li>
								<a href="?app=tinnhan">
									<i class="glyphicon glyphicon-file"></i>  
									Quản lý mẫu tin nhắn</a>
							</li>
                            <li>
								<a href="?app=tinnhan"">
									<i class="glyphicon glyphicon-flash"></i>  
									Nhắn tin nhanh</a>
							</li>
							<li>
								<a href="?app=tinnhan"">
									<i class="glyphicon glyphicon-list"></i>  
									Nhắn tin theo nhóm</a>
							</li>
							<li>
								<a href="?app=tinnhan"">
									<i class="glyphicon glyphicon-calendar"></i>  
									Lập lịch nhắn tin</a>
							</li>
                            
                        </ul>
                    </li>
					<li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"> 
						<i class="glyphicon glyphicon-cog"></i> Hệ thống <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li>
								<a href="#">
									<i class="glyphicon glyphicon-user"></i>  
									Quản lý tài khoản</a>
							</li>
                            <li>
								<a href="#">
									<i class="glyphicon glyphicon-tasks"></i>  
									Quản lý tài nguyên</a>
							</li>
							<li>
								<a href="#">
									<i class="glyphicon glyphicon-wrench"></i>  
									Cấu hình hệ thống</a>
							</li>
							<li>
								<a href="#">
									<i class="glyphicon glyphicon-stats"></i>  
									Cấu hình dịch vụ</a>
							</li>
                            
                        </ul>
                    </li>
                    
                </ul>
                <?php
                /* load block */
                if (!empty($_SESSION["auth"]["tai_khoan"])) {
                    $db = new Database();
                    $this->loaduser = $db->getValue('users', "*", array("id_user" => $_SESSION["auth"]["tai_khoan"]));
                } else {
                    header("Location: ?app=auth");
                }
                ?>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                            <i class="glyphicon glyphicon-user"></i> <?php echo $this->loaduser['username']; ?> <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#"><i class="glyphicon glyphicon-cog"></i> Settings</a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-lock"></i> Change password</a></li>
                            <li class="divider"></li>
                            <li><a href="?app=auth&act=logout"><i class="glyphicon glyphicon-ban-circle"></i> Logout</a></li>
                        </ul>
                    </li>
                </ul>

            </div><!-- /.navbar-collapse -->
        </nav>

        <div class="notice col-xs-12" style="display:none;">
            <div class="alert alert-dismissible" role="alert">
                <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <span class="alert-message"></span>
            </div>
        </div>
        <div class="app_content">
            <?php echo $content; ?>
        </div><!-- /.app_content -->
    </body>
</html>