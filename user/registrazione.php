<?php

session_start();

require_once '../php/connection.php';

if (isset($_SESSION['user_username'])) {
    header("location: user.php");
    exit();

}

$page=file_get_contents("registrazione.html");
$footer=file_get_contents("../footer/footer.html");
$header=file_get_contents("../header/header.html");
$page=str_replace('$header$', $header ,$page);
$page=str_replace('$footer$', $footer ,$page);
$page=str_replace('$rt$','../',$page);
$page=str_replace('$rthome$','../',$page);
$page=str_replace('$chome$','hover', $page);
$page=str_replace('$cconf$','hover', $page);
$page=str_replace('$ccat$','hover', $page);
$page=str_replace('$ccont$','hover', $page);

$login = "ACCEDI";
$user = "index.php";

$page = str_replace('$rtuser$', $user, $page);
$page = str_replace('$login$', $login, $page);

echo $page;


?>
