<html>
    <head>
        <title>Learn Book XML</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    </head>
    <body width="500" border="1"  class="table border  table-hover table-striped">
        <?php
            $doc = new DOMDocument();
            $doc->formatOutput = true;
            $doc->load('http://lab.itp.com:8080/ktra_hung/book.xml');
            $book = $doc->getElementsByTagName("book");
        ?>
        <table align = "center">
            <thead>
            <tr>
                <th>Title</th>
                <th>Price</th>
                <th>Author</th>
            </tr>
            </thead>
            <tbody>
            <?php foreach($book as $b): ?>
                <tr>
                    <td><?PHP echo $title = $b->getElementsByTagName("title")->item(0)->nodeValue; ?></td>
                    <td><?PHP echo $price = $b->getElementsByTagName("price")->item(0)->nodeValue; ?></td>
					<td><?PHP echo $author = $b->getElementsByTagName("author")->item(0)->nodeValue; ?></td>
                </tr>
            <?php endforeach; ?>
            </tbody>
        </table>
        <div class = "class-btn" align = "center">
            <button class = "button" type = "submit"><a href="insertbook.php">Them Du Lieu</a></button>
            <button class = "button" type = "submit">Reset</button>
        </div>
        
    </body>
</html>