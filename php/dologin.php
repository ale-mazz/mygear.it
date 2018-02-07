<?php

include_once '../php/connection.php';
include_once '../php/classes/LoginUser.php';


$username = $_POST['user'];
$password = $_POST['password'];

$error = !(isset($password) && isset($username));


$type = 'error';
$errorCode = 0;
$message = 'Uno o più campi sono vuoti o incompleti.';

if (!$error) {

    $newLogin = new loginUser();
    $newLogin->loginUser($username, $password);
    $result = empty($newLogin->errors);

    if (!$result) {
        $type = 'error';
        $errorCode = 1;
        $message = $newLogin->errors[0];
    } else {
        $type = 'success';
        $message = 'Accesso effettuato.';
        $errorCode = '';
    }
}

$responseArray = array('type' => $type, 'message' => $message, 'errorCode' => $errorCode);

if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
    $encoded = json_encode($responseArray);
    header('Content-Type: application/json');

    echo $encoded;
}