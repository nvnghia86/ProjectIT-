<?php
/**
 * @author HieuBD
 * @version 1.0
 * @since 18/11/2014
 */
if ( !defined('AREA') ) { die('Access denied'); }
@ini_set('memory_limit', '48M');
@set_time_limit(3600);
date_default_timezone_set('Asia/Ho_Chi_Minh');
define("DB_TYPE","mysql");
define("DB_HOSTNAME","p01.vinahost.vn:3306");
define("DB_PASSWORD","Hdez3!14");
define("DB_USERNAME","qxfbg_vnh");
define("DB_DATABSE","qxfbgkqd_haf");
define("DB_TABLE_PREFIX","tnus_");

define("HTTP_HOST","");
define("HTTP_PATH","");
define("DEBUG_MODE","1");

?>