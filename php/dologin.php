<?php

include_once '../php/connection.php';
include_once '../php/classes/LoginUser.php';


$username = $_POST['user'];
$password = $_POST['password'];

// Check if all required fields have been filled
$error = !(isset($password) && isset($username));


$type = 'error';
$errorCode = 0;
$message = 'One or more required field(s) is missing';

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
        $message = 'User logged in';
        $errorCode = '';
    }
}

$responseArray = array('type' => $type, 'message' => $message, 'errorCode' => $errorCode);

if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
    $encoded = json_encode($responseArray);
    header('Content-Type: application/json');
    // header("Location:../../index.php");

    echo $encoded;
}