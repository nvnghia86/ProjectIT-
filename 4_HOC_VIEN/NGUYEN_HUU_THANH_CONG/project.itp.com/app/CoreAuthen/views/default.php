<?php
if ( !defined('AREA') ) { die('Access denied'); }

?>
<div class="login-form">
        <form action="" id="loginform" class="form-horizontal" role="form" method="post">
            <div class="text-center">
            <div class="icon-object border-warning-400 text-warning-400"><i class="icon-shield-check position-center"></i></div>
            <h5 class="content-group-lg">Hệ thống phần mềm quản lý CAHD <small class="display-block">Vui lòng điền thông tin đăng nhập của bạn</small></h5>
        </div>
            <div class="form-group has-feedback has-feedback-left">
            <input type="text" id="username" class="form-control input-lg" name="username" value="" placeholder="Tên đăng nhập">
            <div class="form-control-feedback">
                <i class="icon-user text-muted"></i>
            </div>
        </div>
            <div class="form-group has-feedback has-feedback-left">
            <input type="password" id="password" class="form-control input-lg" name="password" placeholder="Mật khẩu">
            <div class="form-control-feedback">
                <i class="icon-lock2 text-muted"></i>
            </div>
        </div>
        <div class="form-group has-feedback has-feedback-left">
           <button class="btn bg-blue btn-block btn-lg" id="btnLogin" type="submit">Truy cập hệ thống</button>
            <div class="form-control-feedback">
                <i class=""icon-lock position-right"></i>
            </div>
        </div>  
            <div class="form-group" id="lbl_login_error">
            <span id="lblMesseage">
                <?php if (!$this->is_success) { ?>
                    <div id="login-alert" class="alert alert-danger alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        Đăng nhập không thành công!
                    </div>
                <?php } ?>
            </span>
        </div>
           
            <input type="hidden" name="app" value="auth" />
            <input type="hidden" name="act" value="login" />
        </form>
</div>