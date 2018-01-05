<?php

require_once '../php/connection.php';


$page=file_get_contents("catalogo.html");
$verticalmenu=file_get_contents("menu_verticale.html");
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



echo $page;

mysqli_close($conn);

?>
