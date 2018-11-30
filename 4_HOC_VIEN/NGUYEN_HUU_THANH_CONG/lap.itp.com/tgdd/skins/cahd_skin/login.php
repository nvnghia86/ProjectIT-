<?php
if (!defined('AREA')) {
    die('Access denied');
}
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="initial-scale = 1.0,maximum-scale = 1.0" />
        <meta name="keywords" content="<?= $meta_keywords ?>">
        <meta name="description" content="<?= $meta_desc ?>">
        <title><?= $page_title ?></title>
        <!-- Bootstrap CSS -->
        <!-- Global stylesheets -->
        <link href="<?php echo AppObject::getBaseFile('skins/cahd_skin/assets/css/icons/icomoon/styles.css')?>" rel="stylesheet" type="text/css">
        <link href="<?php echo AppObject::getBaseFile('skins/cahd_skin/assets/css/bootstrap.min.css')?>" rel="stylesheet" type="text/css">
        <link href="<?php echo AppObject::getBaseFile('skins/cahd_skin/assets/css/core.min.css')?>" rel="stylesheet" type="text/css">
        <link href="<?php echo AppObject::getBaseFile('skins/cahd_skin/assets/css/components.min.css')?>" rel="stylesheet" type="text/css">
        <link href="<?php echo AppObject::getBaseFile('skins/cahd_skin/assets/css/colors.min.css')?>" rel="stylesheet" type="text/css">
        <!-- /global stylesheets -->

        <!-- Core JS files -->
        <script type="text/javascript" src="<?php echo AppObject::getBaseFile('skins/cahd_skin/assets/js/plugins/loaders/pace.min.js')?>"></script>
        <script type="text/javascript" src="<?php echo AppObject::getBaseFile('skins/cahd_skin/assets/js/core/libraries/jquery.min.js')?>"></script>
        <script type="text/javascript" src="<?php echo AppObject::getBaseFile('skins/cahd_skin/assets/js/core/libraries/bootstrap.min.js')?>"></script>
        <script type="text/javascript" src="<?php echo AppObject::getBaseFile('skins/cahd_skin/assets/js/plugins/loaders/blockui.min.js')?>"></script>
        <script type="text/javascript" src="<?php echo AppObject::getBaseFile('skins/cahd_skin/assets/js/plugins/forms/styling/uniform.min.js')?>"></script>
        
        <script type="text/javascript" src="<?php echo AppObject::getBaseFile('skins/cahd_skin/assets/js/core/app.js')?>"></script>
        <script type="text/javascript" src="<?php echo AppObject::getBaseFile('skins/cahd_skin/assets/js/pages/login.js')?>"></script>
        <!-- /theme JS files -->
        <link href="<?php echo AppObject::getBaseFile('skins/cahd_skin/css/login.css')?>" rel="stylesheet" type="text/css">
    </head>
    <body>
    <body class="bg-slate-800" id="cahd">
            <!-- Page container -->
            <div class="page-container login-container">
                <!-- Page content -->
                <div class="page-content">
                    <!-- Main content -->
                    <div class="content-wrapper">
                        <!-- Content area -->
                        <div class="content">
                            <?=$content?>
                            <div class="footer text-muted">
                                &copy; 2017. <a href="#">Design </a>by <a href="mailto:buiduchieuvnu@gmail" target="_blank">buiduchieuvnu@gmail.com</a>
                                <p>Thiết bị hỗ trợ: PC - Mobile - Tablet; Trình duyệt hỗ trợ: Google Chrome, Firefox, IE 9, Safari </p>
                            </div>
                            <!-- /footer -->
                        </div>
                        <!-- /content area -->
                    </div>
                    <!-- /main content -->
                </div>
                <!-- /page content -->
            </div>
            <!-- /page container -->
    </body>
</html>