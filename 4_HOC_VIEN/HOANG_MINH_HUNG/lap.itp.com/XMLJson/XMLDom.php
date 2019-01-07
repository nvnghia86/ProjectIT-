<?php
$doc = new DOMDocument();
$doc->formatOutput = true;
$doc->load('http://lab.itp.com:8080/XMLJson/book.xml');
$books = $doc->getElementsByTagName("book");

foreach( $books as $book )
{
$authors = $book->getElementsByTagName("author")->item(0)->nodeValue;
$titles = $book->getElementsByTagName("title")->item(0)->nodeValue;
$publishers = $book->getElementsByTagName("publisher")->item(0)->nodeValue;
echo "$titles - $authors - $publishers       ";
echo "<br>";
}
?>
