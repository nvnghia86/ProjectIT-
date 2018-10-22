<?php

include_once("models/TEST_HOCVIEN.php");  
  
class TestHocVienController {  
     public $HocVien;   
  
     public function __construct()    
     {    
          $this->HocVien = new TEST_HOCVIEN();  
     }   
      
     public function showDanhSach()  
     {   
	   $DsHocVien = $this->HocVien->FindAll();  
	   include 'views/danhsach.php'; 
     }  
}  

$controller = new TestHocVienController();  
$controller->showDanhSach(); 

?>