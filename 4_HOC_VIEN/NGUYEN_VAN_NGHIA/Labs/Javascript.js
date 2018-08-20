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