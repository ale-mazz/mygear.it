<?php

require_once '../php/connection.php';

$page=file_get_contents("catalogo.html");
$verticalmenu=file_get_contents("verticalmenu.html");
$footer=file_get_contents("../footer/footer.html");
$header=file_get_contents("../header/header.html");
$page=str_replace('$header$', $header ,$page);
$page=str_replace('$footer$', $footer ,$page);
$page=str_replace('$verticalmenu$', $verticalmenu ,$page);
$page=str_replace('$chome$','hover', $page);
$page=str_replace('$cconf$','hover', $page);
$page=str_replace('$ccat$','selected', $page);
$page=str_replace('$ccont$','hover', $page);
$page=str_replace('$rt$','../',$page);
$page=str_replace('$rthome$','../',$page);
$page=str_replace('$rtcat$','cataloginside/',$page);

//Prezzo Minimo

$products = array();
$qry = mysqli_query($conn,"SELECT Codice_prodotto,Prezzo FROM alimentatori ORDER BY Prezzo ASC");
while($row = mysqli_fetch_assoc($qry)){
    $products[] =$row;
}
foreach ($products as $product){
    $page=str_replace('$priceali$',$product["Prezzo"], $page);
}
$products = array();
$qry = mysqli_query($conn,"SELECT Codice_prodotto,Prezzo FROM case_pc ORDER BY Prezzo ASC");
while($row = mysqli_fetch_assoc($qry)){
    $products[] =$row;
}
foreach ($products as $product){
    $page=str_replace('$pricecase$',$product["Prezzo"], $page);
}
$products = array();
$qry = mysqli_query($conn,"SELECT Codice_prodotto,Prezzo FROM cpu ORDER BY Prezzo ASC");
while($row = mysqli_fetch_assoc($qry)){
    $products[] =$row;
}
foreach ($products as $product){
    $page=str_replace('$pricecpu$',$product["Prezzo"], $page);
}
$products = array();
$qry = mysqli_query($conn,"SELECT Codice_prodotto,Prezzo FROM cuffie ORDER BY Prezzo ASC");
while($row = mysqli_fetch_assoc($qry)){
    $products[] =$row;
}
foreach ($products as $product){
    $page=str_replace('$pricecuffie$',$product["Prezzo"], $page);
}
$products = array();
$qry = mysqli_query($conn,"SELECT Codice_prodotto,Prezzo FROM memorie_interne ORDER BY Prezzo ASC");
while($row = mysqli_fetch_assoc($qry)){
    $products[] =$row;
}
foreach ($products as $product){
    $page=str_replace('$pricemeint$',$product["Prezzo"], $page);
}
$products = array();
$qry = mysqli_query($conn,"SELECT Codice_prodotto,Prezzo FROM memorie_ram ORDER BY Prezzo ASC");
while($row = mysqli_fetch_assoc($qry)){
    $products[] =$row;
}
foreach ($products as $product){
    $page=str_replace('$priceram$',$product["Prezzo"], $page);
}
$products = array();
$qry = mysqli_query($conn,"SELECT Codice_prodotto,Prezzo FROM monitor ORDER BY Prezzo ASC");
while($row = mysqli_fetch_assoc($qry)){
    $products[] =$row;
}
foreach ($products as $product){
    $page=str_replace('$pricemoni$',$product["Prezzo"], $page);
}
$products = array();
$qry = mysqli_query($conn,"SELECT Codice_prodotto,Prezzo FROM mouse_tastiere ORDER BY Prezzo ASC");
while($row = mysqli_fetch_assoc($qry)){
    $products[] =$row;
}
foreach ($products as $product){
    $page=str_replace('$pricemota$',$product["Prezzo"], $page);
}
$products = array();
$qry = mysqli_query($conn,"SELECT Codice_prodotto,Prezzo FROM raffreddamento ORDER BY Prezzo ASC");
while($row = mysqli_fetch_assoc($qry)){
    $products[] =$row;
}
foreach ($products as $product){
    $page=str_replace('$priceraff$',$product["Prezzo"], $page);
}
$products = array();
$qry = mysqli_query($conn,"SELECT Codice_prodotto,Prezzo FROM schede_madri ORDER BY Prezzo ASC");
while($row = mysqli_fetch_assoc($qry)){
    $products[] =$row;
}
foreach ($products as $product){
    $page=str_replace('$pricesm$',$product["Prezzo"], $page);
}

$products = array();
$qry = mysqli_query($conn,"SELECT Codice_prodotto,Prezzo FROM schede_audio ORDER BY Prezzo ASC");
while($row = mysqli_fetch_assoc($qry)){
    $products[] =$row;
}
foreach ($products as $product){
    $page=str_replace('$pricesa$',$product["Prezzo"], $page);
}
$products = array();
$qry = mysqli_query($conn,"SELECT Codice_prodotto,Prezzo FROM schede_video ORDER BY Prezzo ASC");
while($row = mysqli_fetch_assoc($qry)){
    $products[] =$row;
}
foreach ($products as $product){
    $page=str_replace('$pricesv$',$product["Prezzo"], $page);
}

echo $page;

mysqli_close($conn);

?>
