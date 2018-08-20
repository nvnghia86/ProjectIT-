function canhbao(){
	alert('Đây là hộp thoại cảnh báo');
} 

function xacnhan(){
	var ketqua = confirm('Lựa chọn của bạn là gì? (Có hoặc Không)');
	alert('ketqua:' + ketqua);
} 

function nhaolieu(){
	var ketqua = prompt('Tên bạn là gì nhỉ?');
	alert('Rất vui khi được làm quen với ' + ketqua);
} 

/*---------Truy cập vào phần tử HTML------*/
function tong{
	var so1 = prompt('Nhập vào số thứ 1');
	var so2 = prompt('Nhập vào số thứ 2');
	var Tong = parseInt(so1) + parseInt(so2);
}