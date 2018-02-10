<?php

session_start();

require_once '../php/connection.php';

if (!isset($_SESSION['user_username'])) {
    header("location: index.php");
    exit();

}
$page = file_get_contents("user.html");
$footer = file_get_contents("../footer/footer.html");
$header = file_get_contents("../header/header.html");
$page = str_replace('$header$', $header, $page);
$page = str_replace('$footer$', $footer, $page);
$page = str_replace('$rt$', '../', $page);
$page = str_replace('$rthome$', '../', $page);
$page = str_replace('$chome$', 'hover', $page);
$page = str_replace('$cconf$', 'hover', $page);
$page = str_replace('$ccat$', 'hover', $page);
$page = str_replace('$ccont$', 'hover', $page);


$login = ($_SESSION['user_username']);
$user = 'user.php';


$page = str_replace('$rtuser$', $user, $page);
$page = str_replace('$login$', $login, $page);


$page = str_replace('$username$', $_SESSION['user_username'], $page);
$page = str_replace('$email$', $_SESSION['user_email'], $page);
$page = str_replace('$facebook$', $_SESSION['facebook'], $page);
$page = str_replace('$twitter$', $_SESSION['twitter'], $page);
$page = str_replace('$instagram$', $_SESSION['instagram'], $page);

echo $page;

?>
