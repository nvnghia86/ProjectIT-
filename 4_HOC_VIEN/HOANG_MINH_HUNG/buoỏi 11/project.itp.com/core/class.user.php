<?php
if ( !defined('AREA') ) { die('Access denied'); }
/**
 * @author: HieuBD
 * Started 2014-11-16
 * Class: Xử lý tài khoản người dùng
 */
class User extends TNUSObject{
	public function __construct(){
		parent::__construct();
	}
	/**
         *
		Đăng nhập bằng Id của User
		@param: id của User
		@return: trả về true, set lưu Session toàn bộ thông tin user, group, permision
	*/

        /** @author: HieuBD
         * Hàm đăng nhập bằng Id của User => Nếu đăng nhập hợp lệ, lưu thông tin vào session
         * @param <string> $id_user: Id User
         * @param <type> $remember
         */
	public static function login($id_nsd,$remember=false){
		$db=new Database();
		$user=$db->getRow("ht_tai_khoan", "*", array('ID_TAI_KHOAN' => array($id_nsd)));
                $user["MAT_KHAU"]="";
                
//		$group=$db->getValue("user_group", "id_group", array('id_nsd' => array($id_nsd)));
		$_SESSION["auth"]=array();
		foreach($user AS $k=>$v){
			$_SESSION["auth"]["$k"]=$v;
		}
//		$_SESSION["auth"]["group"]=empty($group)?array(0):$group;
	}

	/**
		Đăng xuất
	*/
	function logout(){
		session_destroy();
	}

	/**
		Kiểm tra quyền truy cập đối với User hiện tại đang đăng nhập
		@param: mảng chứa alias các quyền truy cập
		@return: true nếu có quyền truy cập, die nếu không đủ quyền
	*/
	public static function checkPerm($perm){
		$db=new Database();
		$group=$_SESSION["auth"]["group"];
		// lấy ID của các perm
		$items=$db->getArray("perms","*","perm_alias IN('".implode("','",$perm)."')");
		$perms=array();
		for($i=0,$n=count($items);$i<$n;$i++){
			$item=$items[$i];
			$perms=array_merge($perms,explode("/",$item["id_path"]));
		}
		$group=implode(',',$group);
		$perms=implode(',',$perms);
		$group_perm=$db->getField("group_perm","id_perm","id_group IN ($group) AND id_perm IN($perms)");
		if(empty($group_perm))	die("Truy cập bị từ chối.");
		return true;
	}
}
