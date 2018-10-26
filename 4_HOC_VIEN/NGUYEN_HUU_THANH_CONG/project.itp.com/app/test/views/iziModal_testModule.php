<?php
if (!defined('AREA')) {
    die('Access denied');
}
?>

<div id="app_template">
    <h1>Test iziModal - module</h1>
    <button type="button" class="btn btn-default" id="btnOpenModal"> Mở modal</button>
</div>
 <?php include_once(AppObject::getBaseFile('modules/IziModal/IziModal_v1.php')); ?>

<script type="text/javascript">
   var _url = 'http://buiduchieuvnu.wordpress.com';
   var  _title = 'Tieu de tesst iframe';
   
   function onCloseModal(){
       alert('Closed Modal!');
   }
   
   var IModal = new IZI_IFRAME_MODAL(_url, _title,800,600,onCloseModal);
   
   $(document).on('click', '#btnOpenModal', function (event) {
        event.preventDefault();
        // alert('Open Modal...');
        IModal.openModal();
    });

</script>

