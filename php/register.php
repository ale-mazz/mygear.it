<?php

include_once '../php/connection.php';
include_once '../php/classes/RegisterNewUser.php';

// Get all POST variables
$username = $_POST['username'];
$name = $_POST['name'];
$email = $_POST['email'];
$password = $_POST['password'];
$confirmPassword = $_POST['confirmPassword'];

// Check that all the required fields have been filled
$variables = array($name, $email, $username, $password);
$error = false;
foreach ($variables as $variable){
    if(!isset($variables) || empty($variable)){
        $error = true;
    }
}

$type = 'error';
$errorCode = 0;
$message = 'One or more required field(s) is missing';

if(!$error) {

    $newRegistration=new RegisterNewUser();
    $newRegistration->registerNewUser($name,$username,$email,$password,$confirmPassword);
    $result=empty($newRegistration->errors);

    if ($result){
        $type = 'success';
        $message = 'Thanks for registering';
        $errorCode = '';
    } else {
        $message = $newRegistration->errors[0];
        $type = 'error';
        $errorCode = 1;
    }

}

$responseArray = array('type' => $type, 'message' => $message, 'errorCode' => $errorCode);

if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
    $encoded = json_encode($responseArray);
    header('Content-Type: application/json');
    echo $encoded;
} else {
    echo $responseArray['message'];
}
