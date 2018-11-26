<?php
if ( !defined('AREA') ) {
    die('Access denied');
}

/**
 * @author HieuBD
 * Class hỗ trợ đăng nhập
 */
Class AuthApp extends AppObject {
    public $app_name="auth";
    public $dir_layout="cahd_skin";
    public $is_success=true;
    public function __construct() {
        parent::__construct();
    }
    public function display() {

        if(!empty($_SESSION["auth"]["ID_TAI_KHOAN"])) {
            // Đã đăng nhập rồi
            header("Location: ".INDEX); /* Redirect browser */
            exit;
        }
        $this->page_title="TNUS Tech";
        $this->meta_keywords="tag1,tag2";
        $this->meta_desc="desc";
        $this->layout="login";
        parent::display();
    }
    public function login() {
        // kiểm tra nếu đã đăng nhập rồi thì redirect
        if(!empty($_SESSION["auth"]["ID_TAI_KHOAN"])) {
            header("Location: ".INDEX); /* Redirect browser */
            exit;
        }
        // chưa đăng nhập
        $username=$_POST["username"];
        $password=$_POST["password"];
        if(empty($username) || empty($password)) {
            $this->is_success=false;
            $this->layout="login";
            parent::display();
        }
        // lấy id của User
        $db=new Database();
        $password=md5($password);
        $user=$db->getRow("ht_tai_khoan", "*", array('TAI_KHOAN' => array($username), 'MAT_KHAU' => array($password)), PDO::FETCH_OBJ);
        // nếu login lỗi hoặc chưa tồn tại tài khoản
        if($user==false || empty($user)) {
            $this->is_success=false;
            $this->layout="login";
            parent::display();
        }
        //die("Đăng nhập thành công! Username: $username; Pass: $password");
        // nếu có tồn tại thì login
        User::login($user->ID_TAI_KHOAN, $_POST["remember"]);
        // login xong quay về URL
        $returl_url=$_REQUEST["return_url"];
        if(empty($returl_url))
            header("Location: ".INDEX); /* Redirect browser */
        else
            header("Location: ".$returl_url); /* Redirect browser */
        exit;
    }
    public function logout() {
        User::logout();
        // logout xong quay về URL
        $returl_url=$_REQUEST["return_url"];
        if(empty($returl_url))
            header("Location: ".INDEX); /* Redirect browser */
        else
            header("Location: ".$returl_url); /* Redirect browser */
        exit;
    }
    public function resetpass() {

        if(empty($_SESSION["auth"]["ID_TAI_KHOAN"])) {
            header("Location: ".INDEX); /* Redirect browser */
            exit;
        }

        switch($_SESSION['display']) {
            case 'ok':$this->setMsg("Cập nhật","Bạn đã đổi Mật Khẩu thành công","success");
                break;
            case 'no':$this->setMsg("Cập nhật","Bạn đã đổi Mật Khẩu không thành công","error");
                break;
        }
        unset($_SESSION['display']);

        $this->dir_layout="backend";
        $this->layout="default";
        $this->view="resetpass";
        $db=new Database();
        $this->loaduser=$db->getRow('users',"*","id_nsd=".$_SESSION["auth"]["id_nsd"]);

        if(!empty($_REQUEST["name"])&&!empty($_REQUEST["pass"])) {

            $data=array("name"=>$_REQUEST['name'],
                    "password"=>md5($_REQUEST["pass"]));
            $where=$_REQUEST['id'];
            $conditions="id_nsd=".$_SESSION["auth"]["id_nsd"];
            $up=$updade=$db->update('users',$data,$conditions);
            if($up!=false) {
                $_SESSION['display']="ok";

            }else {
                $_SESSION['display']="no";
            }
            header("Location: ".$_SERVER['REQUEST_URI']);
        }
        parent::display();
    }
}
?>