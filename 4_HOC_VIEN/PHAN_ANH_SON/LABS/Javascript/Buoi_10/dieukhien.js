 
 /*Kiểm tra tính số chẵn lẻ*/
 function kiemtra_chanle(){
	 var so = prompt('Nhập vào một số bất kỳ');
	 if(so%2==0){
		 alert('Số' + so +'Là số chẵn');
	 }else{
		 alert('Số' + so + 'Là số lẻ');
	 }
 }
 
  /*Kiểm tra tính ngày tháng*/
  function kiemtra_Ngaythang(){
	  var thang = prompt('Nhập vào tháng bất kỳ');
	  if(thang==4||thang==6||thang==9||thang==11){
		  alert('Tháng' + thang + 'Là tháng  có 30 ngày');
	}else if(thang == 1 || thang == 3 || thang == 5 || thang == 7 || thang == 8 || thang == 10 || thang == 12){
		 
				alert('Tháng' + thang +  'Là tháng có 31 ngày');
	}else{
		alert('Tháng' + thang + 'Chắc là tháng có 28 ngày');
	}
  }
  
    /*Kiểm tra thứ trong tuần*/
	function kiemtra_Thu(){
		var homnay = new Date();
		var ngay = homnay.getDay();
		ngay++;
		var thu = '';
		switch(ngay){
			case 2: thu = 'Thứ 2'; break;
			case 3: thu = 'Thứ 3'; break;
			case 4: thu = 'Thứ 4'; break;
			case 5: thu = 'Thứ 5'; break;
			case 6: thu = 'Thứ 6'; break;
			case 7: thu = 'Thứ 7'; break;
			case 1: thu = 'Chủ Nhật'; break;
			default: thu ='Không xác định';
		}
		alert('Ngày hôm này là thứ: ' + thu);
	}