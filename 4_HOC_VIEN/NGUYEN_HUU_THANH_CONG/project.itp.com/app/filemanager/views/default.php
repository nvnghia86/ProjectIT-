<?php
if (!defined('AREA')) {
    die('Access denied');
}
?>
<link rel="stylesheet" href="<?= AppObject::getBaseFile('app/template/css/app.css') ?>"/>
<div id="app_template" class="col-sm-12">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h4>Quản lý tài nguyên hệ thống</h4>
        </div>
        <div class="panel-body">
            <iframe  width="100%" height="600" frameborder="0"
                     src="<?= AppObject::getBaseFile('libs/filemanager/dialog.php?type=0') ?>">
            </iframe>
        </div>
    </div>
</div> 
<script src="<?= AppObject::getBaseFile('app/template/js/app.js') ?>"></script>