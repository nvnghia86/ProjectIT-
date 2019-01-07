<html>
<head>
    <meta charset="utf-8" />
    <title>Form add book</title>
    <link rel="stylesheet" type="text/css" href="form.css">
</head>
<body>
    <?php
    
        if(isset($_REQUEST['post'])){
            $xml = new DOMDocument("1.0", "UTF_8");
            $xml -> formatOutput = true;
            $xml -> preserveWhiteSpace = false;
            $xml -> load("book.xml");
            $root = $xml -> firstChild;

            $dataTag = $xml -> createElement("book");

           
            $titleTag = $xml -> createElement("title", $_REQUEST['title']);
            $priceTag = $xml -> createElement("price", $_REQUEST['price']);
			$authorTag = $xml -> createElement("author", $_REQUEST['author']);

            $dataTag -> appendChild($titleTag);
            $dataTag -> appendChild($priceTag);
			 $dataTag -> appendChild($authorTag);

            $root -> appendChild($dataTag);

            $xml -> save("book.xml");
        }
    ?>   
    <div>
	<table>
        <form action="learnbook.php">
		<tr>
			<td>
            <label for="lname">Title</label>
			</td>
			<td>
            <input type="text" id="lname" name="title" placeholder="Title...">
			</td>
		</tr>
		<tr>
		
            <td><label for="lname">Price</label></td>
            <td><input type="text" id="lname" name="price" placeholder="Price..."></td>
		</tr>
		<tr>
			<td> <label for="fname">Author</label></td>
           <td> <input type="text" id="fname" name="author" placeholder="Author..."></td>
        </tr>
		<tr>
			<td>
            <button type="submit">Add book</button>
            <button type="submit" formaction = "insertbook.php">Reset</button>
			</td>
		</tr>
    </form>
	</table>
</div>
</body>
</html>