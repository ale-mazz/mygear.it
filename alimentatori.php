<?php

$products=[
    ["titolo"=>"alimentatore1", "descrizione"=>"descrizione1"],
    ["titolo"=>"alimentatore2", "descrizione"=>"descrizione2"],
    ["titolo"=>"alimentatore3", "descrizione"=>"descrizione3"],
    ["titolo"=>"alimentatore4", "descrizione"=>"descrizione4"],
    ["titolo"=>"alimentatore5", "descrizione"=>"descrizione5"]
];

$insertproduct="";

foreach ($products as $product){

    $get_product=file_get_contents("products.html");
    $get_product=str_replace("$title$",$product["titolo"]);
    $get_product=str_replace("$avaible$",$product["descrizione"]);
    $insertproduct=$insertproduct.$get_product;
}

$catalogpage=file_get_contents("alimentatori.html");
$catalogpage=str_replace("$products$",$insertproduct);

echo $catalogpage;
