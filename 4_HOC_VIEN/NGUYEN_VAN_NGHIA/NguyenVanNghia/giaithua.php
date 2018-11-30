<!DOCTYPE html>
<html>
    <head>
        <title>Tính Giai Thừa</title>
        <meta charset="UTF-8">
    </head>
    <body>
        <?php 
            $result = '';
            if (isset($_POST['calculate']))
            {
                 $a = isset($_POST['a']) ? $_POST['a'] : '';
                 $x = 1;
                  for($i=1; $i <= $a-1; $i++)  
                  {  
                    $x*=($i+1);   
                  }  
            $result =  "Giai thừa của $a là: $x"."<br>";

            }
        ?>
        <h1>Tính Giai Thừa</h1>
        <form method="post" action="">
            <input type="text" style="width: 20px" name="a" value=""/>
           
            <br/><br/>
            <input type="submit" name="calculate" value="Tính" />
        </form>
        <?php echo $result; ?>
    </body>
</html>