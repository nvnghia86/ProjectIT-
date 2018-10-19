<?php
$thumuc = "hinhanh/";
foreach(glob($thumuc.'*') as $filename){
    echo basename($filename) . "<br/>";
}

?>