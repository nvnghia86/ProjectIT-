<nav class="navbar navbar-default" role="navigation">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="/"><i class="glyphicon glyphicon-th"></i> Bảng điều khiển</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"> 
                    <i class="icon-mail-read"></i> Công văn <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                    <li>
                        <a href="?app=congvan">
                            <i class="glyphicon glyphicon-list-alt"></i>  
                            Công văn đến</a>
                    </li>
                    <li>
                        <a href="?app=congvandi">
                            <i class="glyphicon glyphicon-phone"></i>  
                            Công văn đi</a>
                    </li>
                    <li>
                        <a href="?app=sms_danhba&task=import_danhba">
                            <i class="glyphicon glyphicon-import"></i>  
                            Import danh bạ từ file excel</a>
                    </li>

                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"> 
                    <i class="icon-map4"></i> ĐỊA BÀN <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                     <li><a href="?app=caDmDiaBan">Danh mục địa bàn</a></li> 
                </ul>
            </li>
             <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"> 
                    <i class="icon-books"></i> CHUYÊN ĐỀ <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                     <li><a href="#">Đầu mục chuyên đề</a></li>
                    <li><a href="/Views/ChuyenDe">Danh sách chuyên đề</a></li>
                    
                </ul>
            </li>
            
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"> 
                    <i class="icon-books"></i> KẾ HOẠCH NGHIỆP VỤ <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                    <li><a href="#">Đầu mục kế hoạch</a></li>
                    <li><a href="#">Danh sách kế hoạch</a></li>
                </ul>
            </li>
            
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"> 
                    <i class="glyphicon glyphicon-cog"></i> Hệ thống <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                    <li>
                        <a href="#">
                            <i class="glyphicon glyphicon-user"></i>  
                            Quản lý tài khoản</a>
                    </li>
                    <li>
                        <a href="?app=filemanager">
                            <i class="glyphicon glyphicon-tasks"></i>  
                            Quản lý tài nguyên</a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="glyphicon glyphicon-wrench"></i>  
                            Cấu hình hệ thống</a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="glyphicon glyphicon-stats"></i>  
                            Cấu hình dịch vụ</a>
                    </li>

                </ul>
            </li>

        </ul>
        <?php
        /* load block */
        /* if (!empty($_SESSION["auth"]["id_nsd"])) {
            $db = new Database();
            $this->loaduser = $db->getValue('ht_taikhoan', "*", array("id_nsd" => $_SESSION["auth"]["id_nsd"]));
        } else {
            header("Location: ?app=auth");
        } */
		 if (!empty($_SESSION["auth"]["ID_TAI_KHOAN"])) {
            $db = new Database();
            $this->loaduser = $db->getValue('ht_tai_khoan', "*", array("ID_TAI_KHOAN" => $_SESSION["auth"]["ID_TAI_KHOAN"]));
        } else {
            header("Location: ?app=auth");
        }
        ?>
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                    <i class="glyphicon glyphicon-user"></i> <?php echo $this->loaduser['taikhoan']; ?> <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                    <li><a href="#"><i class="glyphicon glyphicon-cog"></i> Settings</a></li>
                    <li><a href="#"><i class="glyphicon glyphicon-lock"></i> Change password</a></li>
                    <li class="divider"></li>
                    <li><a href="?app=auth&act=logout"><i class="glyphicon glyphicon-ban-circle"></i> Logout</a></li>
                </ul>
            </li>
        </ul>
    </div><!-- /.navbar-collapse -->
</nav>
<!--Hidden field-->
<input type="hidden" id="TAIKHOAN" value=" <?=$this->loaduser['username']?>" />