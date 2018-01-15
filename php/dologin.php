<?php

include_once '../php/connection.php';
include_once '../php/classes/LoginUser.php';


$user = $_POST['user'];
$password = $_POST['password'];

// Check if all required fields have been filled
$error = !(isset($password) && isset($user));


$type = 'error';
$errorCode = 0;
$message = 'One or more required field(s) is missing';

if (!$error) {

    $newLogin = new loginUser();
    $newLogin->loginUser($username, $password);
    $result = empty($newLogin->errors);

    if (!$result['result']) {
        $type = 'error';
        $errorCode = $result['error_code'];
        $message = $result['message'];
    }
}

$responseArray = array('type' => $type, 'message' => $message, 'errorCode' => $errorCode);

if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
    $encoded = json_encode($responseArray);
    header("Location:../../index.php);

    echo $encoded;
}

else {

    header("Location: index . php");
}