<?php

require_once '../../php/connection.php';

// MYSQLI Query e riempimento array di array associativi

$products = array();

$qry = mysqli_query($conn, "SELECT Codice_prodotto, Nome, Descrizione, Prezzo, Img, Disponibilita, Alt FROM cuffie ORDER BY Prezzo ASC");

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
    $get_product=str_replace('$price$',$product["Prezzo"], $get_product);
    $get_product=str_replace('$availability$',$product["Disponibilita"], $get_product);
    $get_product = str_replace('$alt$', $product["Alt"], $get_product);
    $get_product=str_replace('$img$',"../../images/categorie/cuffie/".$product["Img"], $get_product);
    $insertproduct=$insertproduct.$get_product;
}

$page=file_get_contents("catinside.html");
$verticalmenu=file_get_contents("../verticalmenu.html");
$footer=file_get_contents("../../footer/footer.html");
$header=file_get_contents("../../header/header.html");
$page=str_replace('$header$', $header ,$page);
$page=str_replace('$footer$', $footer ,$page);
$page=str_replace('$verticalmenu$', $verticalmenu ,$page);
$page=str_replace('$titlecat$','CUFFIE' ,$page);
$page=str_replace('$products$',$insertproduct, $page);
$page=str_replace('$rt$','../../',$page);
$page=str_replace('$rthome$','../../',$page);
$page=str_replace('$chome$','hover', $page);
$page=str_replace('$cconf$','hover', $page);
$page=str_replace('$ccat$','selected', $page);
$page=str_replace('$ccont$','hover', $page);
$page=str_replace('$rtcat$','',$page);

echo $page;

mysqli_close($conn);

?>
