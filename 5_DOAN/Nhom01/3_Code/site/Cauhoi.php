<html><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Màn hình câu hỏi</title>
</head>
<style>
    /* reset css*/
    *{margin: 0; padding:0}
    body{
        background-color: aquamarine;
    }
    .wrapper{
        width: 1300px;
        margin: 0 auto;
    }
    #header{
        width: 100%;
        height: 55px;
        background: white;
        float: left;
    }
    #header #pin{
       margin: 0px 0px 10px 0px;
       float: left;
    }
    #header #name{
        margin: 0px 0px 0px 1200px;
    }
</style>
<body>
    <div id="header">
        <div class="wrapper">
            <div id="pin">PIN</div>
            <div id="name">NAME</div>
        </div>
    </div>
    <div id="content">
        <h1 style="text-align:center;">Question</h1>
        <h3 style="text-align:center;">Go!</h3>
    </div>
</body>
</html>
