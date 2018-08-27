function xinchao()
{
	alert("Xin chào Mr.Hì");
}
function giai_pt()
{
	var a = prompt('Nhập a:');
	var b = prompt('Nhập b:');
	var c = prompt('Nhập c:');
	var delta = b*b - 4*a*c;
	if(delta == 0 )
	{
		alert('Phương trình có nghiệm kép là:' + -b/2*a  );
		return;
	}
	else if ( delta < 0 )
	{
		alert('Phương trình vô nghiệm');
		return;
	}
	else
	{
		alert('Phương trình có 2 nghiệm phân biệt');
		alert('x1 = '+(-b-Math.sqrt(delta))/(2*a));
		alert('x1 = '+(-b+Math.sqrt(delta))/(2*a));
	}
}
function lap_for()
{
	var dayso = '';
	for(var i=1 ; i<=100; i++)
	{
		if(i%2==0)
		{
			dayso =dayso + i +';' ;
		}

	}
	document.getElementById('ketqua').innerHTML = dayso;
	alert('Sử lý song');
}
//dayso = i%2==0 ? dayso + = i + ';':'';
//		i++; -->
function lap_do(){
				var dayso='';
				var dem = 0;
				var i=0;
				do{
					if(i%2==0){
						dayso = dayso + i + '; ';
						dem++;
					}
					i++;
				}while(dem<=100);
				document.getElementById('ketqua1').innerHTML=dayso;
				alert('Xử lý xong!');
			}
function lap_while(){
				var dayso='';
				var dem = 0;
				var i=0;
				while(dem<=100){
					if(i%2==0){
						dayso = dayso + i + '; ';
						dem++;
					}
					i++;
				}
				document.getElementById('ketqua2').innerHTML=dayso;
				alert('Xử lý xong!');
			}
