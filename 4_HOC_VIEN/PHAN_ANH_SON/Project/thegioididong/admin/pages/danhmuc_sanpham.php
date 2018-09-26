<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>thegioididong.com | Quản trị danh mục nhà cung cấp</title>

    <!-- Bootstrap Core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- jQuery -->
    <script src="../vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../js/sb-admin-2.js"></script>
	<script src="../data/DULIEUMAU.js"></script>
    <script src="../js/DM_SANPHAM.js"></script>
	
	<script>
		
		var Data = new DULIEU_MAU();
		var DM = new DM_SANPHAM();
		DM.load_DuLieu(Data.DM_SANPHAM);
		
		function show_DanhSach(){
			$('#DanhSach tbody').html('');
			var html='';
			for(var i=0; i< DM.DANH_SACH.length; i++){
				var trangthai = '';
				if(DM.DANH_SACH[i].TRANG_THAI=='Kích hoạt'){
					trangthai = '<label class="label label-success">Kích hoạt</label>';
				}else{
					trangthai = '<label class="label label-danger">Khóa</label>';
				}
			
				html +='<tr>';
				html +='<td>'+ (i+1) +'</td>';
				html +='<td>'+ DM.DANH_SACH[i].MA +'</td>';
				html +='<td>'+ DM.DANH_SACH[i].TEN +'</td>';
				html +='<td>'+ DM.DANH_SACH[i].MO_TA +'</td>';
				html +='<td>'+ trangthai +'</td>';
				html +='</tr>';
			}
			$('#DanhSach tbody').html(html);
		}
	
		$(function(){
			var Acc = JSON.parse(localStorage.getItem('Acc'));
			$('#spVaiTro').html(Acc.VAI_TRO);
			
			show_DanhSach();
			
			$('#btnThem').on('click',function(){
				
				DM.MA = $('#MA').val();
				DM.TEN = $('#TEN').val();
				DM.MO_TA = $('#MO_TA').val();
				DM.TRANG_THAI = $('#TRANG_THAI').val();
				
				if(DM.them()==true){
					$('#MA').val('');
					$('#TEN').val('');
					$('#MO_TA').html('');
					$('#TRANG_THAI').val('Kích hoạt');
					show_DanhSach();
				}else{
					$('#MA').focus();
				}
			
			});
		
		});
		
	</script>

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php">Thegioididong.com | Quản trị hệ thống</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>Phan Anh Sơn</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 1</strong>
                                        <span class="pull-right text-muted">40% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 2</strong>
                                        <span class="pull-right text-muted">20% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            <span class="sr-only">20% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 3</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 4</strong>
                                        <span class="pull-right text-muted">80% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Tasks</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <span id="spVaiTro"></span> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> Hồ sơ</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i>Cấu hình hệ thống</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.php"><i class="fa fa-sign-out fa-fw"></i>Đăng xuất</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <<li>
                            <a href="index.php"><i class="fa fa-dashboard fa-fw"></i> Bảng điều khiển</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Quản trị danh mục sản phẩm<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="danhmuc_sanpham.php">Danh mục sản phẩm</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
							
                        </li>
						<li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Quản trị nhà cung cấp<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="danhmuc_nhacungcap.php">Danh sách nhà cung cấp</a>
                                </li>
                                
                            </ul>
                            <!-- /.nav-second-level -->
							
                        </li>
						<li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>Quản trị sản phẩm<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="danhsachsanpham.php">Danh sách sản phẩm</a>
                                </li>
                                
                            </ul>
                            <!-- /.nav-second-level -->
							
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Quản trị danh mục sản phẩm</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
            <div class="row">
				<div class="col-lg-4 col-sm-12">
					<div class="panel panel-info">
						<div class="panel-heading">
                            Chi tiết nhà sản phẩm
                        </div>
						
						<div class="panel-body">
							<div class="form-group">
								<label>Mã:</label>
								<input type="text" id="MA" class="form-control" placeholder="Mã danh mục..."/>
							</div>
							<div class="form-group">
								<label>Tên:</label>
								<input type="text" id="TEN" class="form-control" placeholder="Tên danh mục..."/>
							</div>
							<div class="form-group">
								<label>Mô tả:</label>
								<input type="textarea" id="MO_TA" class="form-control" placeholder="Mô tả..."/>
							</div>
							 <div class="form-group">
                                <label>Trạng thái</label>
                                <select id="TRANG_THAI" class="form-control">
                                    <option value="Kích hoạt">Kích hoạt</option>
                                    <option value="Khóa">Khóa</option>
                                </select>
                            </div>
							<div class="panel-footer">
									<button type="button" id="btnThem" class="btn btn-success"> Thêm mới</button>
									<button type="button" class="btn btn-warning"> Lưu</button>
									<button type="button" class="btn btn-danger"> Xóa</button>
							</div>
							
						</div>
						<!-- /panel-body -->
					</div>
				</div>
				
				<div class="col-lg-8 col-sm-12">
					<div class="panel panel-primary">
						<div class="panel-heading">Danh sách nhà cung cấp</div>
						<div class="panel-body">
							<table class="table table-bordered table-striped" id="DanhSach">
								<thead>
									<tr>
										<th>STT</th>
										<th>Mã</th>
										<th>Tên</th>
										<th>mô tả</th>
										<th>Trạng thái</th>
									</tr>
								</thead>
								<tbody></tbody>
							</table>
						</div>	
					</div>
				</div>
			</div>
		<!-- /.row -->	
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->



</body>

</html>
