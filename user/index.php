<?php

require_once '../php/connection.php';

$page=file_get_contents("login.html");
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


// load the login class
require_once("../php/classes/loginclass.php");

// create a login object. when this object is created, it will do all login/logout stuff automatically
// so this single line handles the entire login process. in consequence, you can simply ...
$login = new loginclass();

// ... ask if we are logged in here:
if ($login->isUserLoggedIn() == true) {
    // the user is logged in. you can do whatever you want here.
    // for demonstration purposes, we simply show the "you are logged in" view.
    header("Location: ../index.php");
    die();

} else {
    // the user is not logged in. you can do whatever you want here.
    // for demonstration purposes, we simply show the "you are not logged in" view.

}

echo $page;

?>
