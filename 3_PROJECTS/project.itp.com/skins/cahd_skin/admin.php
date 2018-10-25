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
        <link href="<?php echo AppObject::getBaseFile('skins/cahd_skin/assets/css/bootstrap.min.css') ?>" rel="stylesheet" type="text/css">
        <link href="<?php echo AppObject::getBaseFile('skins/cahd_skin/assets/css/icons/icomoon/styles.css') ?>" rel="stylesheet" type="text/css">
        <link href="<?php echo AppObject::getBaseFile('public/css/base.css') ?>" rel="stylesheet" media="screen">
        <link href="<?php echo AppObject::getBaseFile('skins/cahd_skin/css/admin.css') ?>" rel="stylesheet" media="screen">
        <script type="text/javascript" src="<?php echo AppObject::getBaseFile('libs/jquery/jquery-3.3.1.min.js') ?>"></script>
        <script type="text/javascript" src="<?php echo AppObject::getBaseFile('skins/cahd_skin/assets/js/core/libraries/bootstrap.min.js') ?>"></script>
        <script src="<?= AppObject::getBaseFile('libs/Cores/CoreUtilities.js') ?>"></script>
        <script src="<?= AppObject::getBaseFile('app/CoreData/js/CoreDataAjax.js') ?>"></script>
        <?php include_once(AppObject::getBaseFile('modules/ecc_dialog/eccdialog.php')); ?>
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
        <div class="header">
            <?php include AppObject::getBaseFile('modules/header/cahd_header.php'); ?>
        </div>
        
        <div class="menu_ngang">
            <?php include AppObject::getBaseFile('modules/menu/menu_ngang.php'); ?>
        </div>
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