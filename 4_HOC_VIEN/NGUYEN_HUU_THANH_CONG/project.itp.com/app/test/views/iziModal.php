<?php
if (!defined('AREA')) {
    die('Access denied');
}
?>

<link rel="stylesheet" href="<?= AppObject::getBaseFile('libs/iziModal/css/iziModal.css') ?>"/>
<div id="app_template">
    <h1>Test iziModal</h1>
    <div id="modal-iframe"></div>
    <button class="open-iframe button">Mở modal Iframe</button>
</div>
<script src="<?= AppObject::getBaseFile('libs/iziModal/js/iziModal.js') ?>"></script>

<script type="text/javascript">
    $('#modal-iframe').iziModal({
        title: 'Test modal - iframe', 
        width: 800,
        iframe: true,
        iframeHeight: 400,
        iframeURL: 'http://buiduchieuvnu.wordpress.com',
        closeButton: true,
        fullscreen:true
    });

    $(document).on('click', '.open-iframe', function (event) {
        event.preventDefault();
        $('#modal-iframe').iziModal('open', this);
    });



    (function () {

    })(jQuery);

</script>

