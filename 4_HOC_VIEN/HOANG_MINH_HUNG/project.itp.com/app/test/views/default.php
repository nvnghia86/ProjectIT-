<?php if (!defined('AREA')) {
    die('Access denied');
} ?>

<link rel="stylesheet" href="<?= AppObject::getBaseFile('app/template/css/app.css') ?>"/>
<div id="app_template">
    
</div>
<script src="<?= AppObject::getBaseFile('app/template/js/app.js') ?>"></script>

<h1>Test App</h1>

<ul>
    <li><a target="_blank" href="?app=test&view=izimodal">izimodal</a></li>
    <li><a target="_blank" href="?app=test&view=iziModal_testModule">izimodal - module</a></li>
</ul>