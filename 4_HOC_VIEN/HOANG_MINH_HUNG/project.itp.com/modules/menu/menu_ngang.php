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
        <ul class="nav navbar-nav" id="MainMenu"></ul>
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

<script src="modules/menu/MenuNgang.js"></script>
<script>

    var Menu = new MenuNgang();
    
    function Menu_bind(){
        Menu.getTree();
        //console.log(Menu.TreeData);
        var _html = '';
        for (var i = 0; i < Menu.TreeData.length; i++) {
            var _item = Menu.TreeData[i][1];
            //console.log(_item);
            if(_item.children.length > 0){
                _html +='<li class="dropdown">';
                        _html +='<a href="'+ _item.url +'" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"> ';
                                _html +='<i class="'+ _item.css_class +'"></i> ' + _item.tieude + ' <span class="caret"></span></a>';
                        _html +='<ul class="dropdown-menu" role="menu">';
                        for (var j = 0; j < _item.children.length; j++) {
                            var _chil = _item.children[j];
                            _html +='<li>';
                                _html +='<a href="' + _chil.url + '">';
                                _html +='<i class="' + _chil.css_class + '"></i>  ';
                                _html +='' + _chil.tieude + '</a>';
                            _html +='</li>';
                        }
                                
                        _html +='</ul>';
                _html +='</li>';
            }else{
                _html += '<li>';
                _html += '<a href="'+ _item.url +'"> <i class="'+ _item.css_class +'"></i> ' + _item.tieude + '</a>';
                _html += '</li>';
            }
        }
        //console.log(_html);
        $('#MainMenu').html(_html);
    }
    
    $(function(){
        Menu_bind();
    
    });
    
    

</script>