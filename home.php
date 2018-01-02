<?php

require_once 'php/connection.php';


$page=file_get_contents("home.html");
$footer=file_get_contents("footer/footer.html");
$header=file_get_contents("header/header.html");
$page=str_replace('$header$', $header ,$page);
$page=str_replace('$footer$', $footer ,$page);


echo $page;

mysqli_close($conn);

?>
