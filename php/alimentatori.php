<?php

///////////////////////////////

$servername = "localhost";
$username = "root";
$password = "";
$db = "mygear";

// Create connection
$conn = new mysqli($servername, $username, $password, $db);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";

// MYSQLI Query e riempimento array di array associativi

$products = array();

$qry = mysqli_query($conn,"SELECT Codice_prodotto, Nome, Descrizione,Img FROM alimentatori ORDER BY Codice_prodotto");

while($row = mysqli_fetch_assoc($qry)){
    $products[] =$row;
}

// Gestione errori delle query

if (!$qry) {
    printf("Error: %s\n", mysqli_error($conn));
    exit();
}

// Inserimento prodotti all'interno della pagina corrispondente a partire dall'array

$insertproduct="";

foreach ($products as $product){

    $get_product=file_get_contents("product.html");
    $get_product=str_replace('$title$',$product["Nome"], $get_product);
    $get_product=str_replace('$description$',$product["Descrizione"], $get_product);
    $get_product=str_replace('$img$',"../images/categorie/".$product["Img"], $get_product);
    $insertproduct=$insertproduct.$get_product;
}

$catalogpage=file_get_contents("../catalog/cataloginside/alimentatori.html");
$catalogpage=str_replace('$products$',$insertproduct, $catalogpage);

echo $catalogpage;

mysqli_close($conn);

?>
