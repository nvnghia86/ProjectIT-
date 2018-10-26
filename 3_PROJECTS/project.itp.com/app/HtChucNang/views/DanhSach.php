<script src="<?= AppObject::getBaseFile('libs/Cores/CoreUtilities.js') ?>"></script>
<script src="<?= AppObject::getBaseFile('app/CoreData/js/CoreDataAjax.js') ?>"></script>
<script src="<?= AppObject::getBaseFile('app/HtChucNang/js/HtChucNang.js') ?>"></script>
<script src="<?= AppObject::getBaseFile('libs/jsTree/jstree.min.js') ?>"></script>
<link href="<?= AppObject::getBaseFile('libs/jsTree/themes/default/style.min.css')?>" rel="stylesheet" />
<style>
    #tblDanhSach > tbody > tr:hover {
        cursor: pointer;
        background-color: #0EB2D4;
    }

    #tblDanhSach > tbody tr.selected {
        color: white;
        background-color: #0EB2D4 !important;
    }
    
    .require{color: red; font-weight: bold}

</style>
<div class="row" style="margin-top:10px;">
    <h3 class="label-default" style="margin: 0px 10px 10px 10px; padding: 2px; color: #FFF; border-left: 5px #CB9420 solid; font-size: 14px">Quản lý chức năng</h3>
    <div class="col-sm-8">
        <div class="row panel panel-primary" id="LIST">
            <div class="panel-heading">Danh sách chức năng</div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-6">
                        <input type="text" class="form-control form-group-xs" id="txtSearch" placeholder="Tìm kiếm..." />
                    </div>
                    <div class="col-md-6">
                        <button type="button" class="btn btn-primary btn-xs" id="btnSearch"><i class="glyphicon glyphicon-search"></i> Tìm kiếm</button>
                        <button type="button" class="btn btn-primary btn-xs" id="btnClear"><i class="glyphicon glyphicon-refresh"></i> Làm mới</button>
                        <button type="button" class="btn btn-primary btn-xs" id="btnExpand"><i class="glyphicon glyphicon-expand"></i> Xem tất</button>
                        <button type="button" class="btn btn-primary btn-xs" id="btnCollapse"><i class="glyphicon glyphicon-collapse-down"></i> Cuộn lại</button>
                    </div>
                </div>
                <hr/>
                <div id="treeDanhSach"></div>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="well">
            <table class="table table-bordered table-striped table-hover">
                <tr>
                    <td width="30%">ID</td>
                    <td><label id="lblID"></label></td>
                </tr>
                <tr>
                    <td>Mã</td>
                    <td><label id="lblMa"></label></td>
                </tr>
                <tr>
                    <td>Tiêu đề</td>
                    <td><label id="lblTieuDe"></label></td>
                </tr>
                <tr>
                    <td>URL</td>
                    <td><label id="lblUrl"></label></td>
                </tr>
                <tr>
                    <td>CSS</td>
                    <td><label id="lblCss"></label></td>
                </tr>
                <tr>
                    <td>CSS Class</td>
                    <td><label id="lblCssClass"></label></td>
                </tr>
                <tr>
                    <td>Trạng thái</td>
                    <td><label id="lblTrangThai"></label></td>
                </tr>
            </table>
        </div>
    </div>
</div>

<script>
    var ChucNang = new HtChucNang('?app=HtChucNang');
    var EccDialog = new ECC_DIALOG(Page_init);
    var Util = new CoreUtilities();
   
    function Page_init() {
        Tree_load();
    }
    
    function Form_clear() {
        
    }
    
    function Form_bind() {
       
    }

    function Action_filter() {
        
    }
    
    function Tree_load(){
        ChucNang.getTreeFilterLoai();
        $('#treeDanhSach').jstree("destroy").empty();
        $('#treeDanhSach').on('changed.jstree', function (e, data) {
            var _item = data.node.original;
            $('#lblID').html(_item.id_ht_chucnang);
            $('#lblMa').html(_item.ma);
            $('#lblTieuDe').html(_item.tieude);
            $('#lblUrl').html(_item.url);
            $('#lblCss').html(_item.css);
            $('#lblCssClass').html(_item.css_class);
            if(_item.trangthai == '1'){
                $("#lblTrangThai").html('Kích hoạt');
                $("#lblTrangThai").attr('class', 'label label-success');
            }else{
                $("#lblTrangThai").html('Khóa');
                $("#lblTrangThai").attr('class', 'label label-danger');
            }
            
         }).jstree({
            'plugins': ["wholerow","contextmenu","search"],
            'core' : {
                'data' : ChucNang.TreeData
            },
            'contextmenu': {
                'select_node': false,
                'items': function(node) {
                    return {
                        CreateNew : {
                          "label" : "Tạo mới",
                          "action" : function(){
                              var _id = node.original.id_ht_chucnang;
                              var _text = node.original.text;
                              EccDialog.show('Tạo mới chức năng', '?app=HtChucNang&view=PopChiTiet&layout=popup&id=0&id_cha=' + _id + '&ten_chucnang_cha=' + _text, '70%', '350', 'modModal');
                          },
                          "_class" : "class"
                        },
                        Edit : {
                          "label" : "Sửa thông tin",
                          "action" : function(){
                              var _id = node.original.id_ht_chucnang;
                              EccDialog.show('Sửa chức năng', '?app=HtChucNang&view=PopChiTiet&layout=popup&id=' + _id , '70%', '350', 'modModal');
                          },
                          "_class" : "class"
                        },
                        Delete : {
                          "label" : "Xóa",
                          "action" : function(){
                              ChucNang.id_ht_chucnang = node.original.id_ht_chucnang;
                              
                              if(ChucNang.id_ht_chucnang=='0'){
                                  alert('Không được xóa chức năng gốc');
                                  return false;
                              }
                              
                              if(confirm('Bạn có chắc chắn muốn xóa chức năng này không?')){
                                  var _rs = ChucNang.del();
                                  ChucNang.getTreeFilterLoai();
                                  $('#treeDanhSach').jstree("refresh");;
                              }
                          },
                          "_class" : "class"
                        }
                    };  
                }
            }
        }); 
    }

    function showAdd(){
        alert('Tạo mới địa bàn: ');
    }
    
    function showEdit(){
        alert('Sửa địa bàn');
    }
    
    function DiaBan_del(){
        alert('Xóa địa bàn');
    }
    
    
    $(function () {
        
         Page_init();

        $('#btnSearch').on('click',function(){
            $('#treeDanhSach').jstree('search',$('#txtSearch').val());
        });
        
        $('#btnClear').on('click',function(){
            Page_init();
        });
        
        $("#txtSearch").keyup(function(event) {
            if (event.keyCode === 13) {
                $('#treeDanhSach').jstree('search',$('#txtSearch').val());
            }
        });
        
        $('#btnExpand').on('click',function(){
            $('#treeDanhSach').jstree('open_all');
        });
        
        $('#btnCollapse').on('click',function(){
            $('#treeDanhSach').jstree('close_all');
        });

    });

</script>


