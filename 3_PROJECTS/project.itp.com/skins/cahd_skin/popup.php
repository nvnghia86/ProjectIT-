<link href="<?php echo AppObject::getBaseFile('skins/cahd_skin/assets/css/bootstrap.min.css') ?>" rel="stylesheet" type="text/css">
<link href="<?php echo AppObject::getBaseFile('public/css/base.css') ?>" rel="stylesheet" media="screen">
<link href="<?php echo AppObject::getBaseFile('skins/cahd_skin/css/admin.css') ?>" rel="stylesheet" media="screen">
<script type="text/javascript" src="<?php echo AppObject::getBaseFile('skins/cahd_skin/assets/js/core/libraries/jquery.min.js') ?>"></script>
<script type="text/javascript" src="<?php echo AppObject::getBaseFile('skins/cahd_skin/assets/js/core/libraries/bootstrap.min.js') ?>"></script>
<script src="<?= AppObject::getBaseFile('libs/Cores/CoreUtilities.js') ?>"></script>
<script src="<?= AppObject::getBaseFile('app/CoreData/js/CoreDataAjax.js') ?>"></script>
<?php echo $content; ?>