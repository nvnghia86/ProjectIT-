<html><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title>nhập tên</title>
</head>
<style>
/* reset css*/
*{margin: 0; padding:0}
body{
    background-color: pink;
    background-repeat: no-repeat; 
    background-size: 100% auto;
    margin: 50px 50px 50px 550px;
}
input[type="text"]{
    width: 200px;
    height: 50px;
	background-color: white;
}
button[type="submit"]{
    width: 200px;
    height: 50px;
}
</style>
<body>
    <table align="center">
        <tr>    
            <th style="text-align:center;">TRẮC NGHIỆM 2019</th>
        </tr>
        <tr>
            <th>
                <input type="text" placeholder="Mời nhập tên" style="text-align:center;">
            </th>
        </tr>
        <tr>
            <th>
                <button type="submit" class="btn btn-success btn-lg">OK, Let's go</button>
            </th>
        </tr>
    </table>
</body>
</html>