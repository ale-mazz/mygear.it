<?php

include_once '../php/connection.php';
include_once '../php/common.php';


$MESSAGE_ERROR_SAME_USER = 'User with same username already registered';
$MESSAG_ERROR_SAME_EMAIL = 'User with same e-mail address already registered';

// Get all POST variables
$username = $_POST['username'];
$surname = $_POST['surname'];
$name = $_POST['name'];
$email = $_POST['email'];
$password = getEncryptedPassword($_POST['password']);
$confirmPassword = $_POST['confirmPassword'];

// Check that all the required fields have been filled
$variables = array($name, $surname, $email, $username, $password);
$error = false;
foreach ($variables as $variable){
    if(!isset($variables) || empty($variable)){
        $error = true;
    }
}

$type = 'error';
$errorCode = 0;
$message = 'One or more required field(s) is missing';

// Check that the password has the length from 8 to 20 characters, and is equals to the confirm one
$error = !checkPassword($password);
$error &= checkConfirmPassword($password,$confirmPassword);

// Check that the username is included inside the 6-20 characters range
$error &= !checkUsername($username);

// Check the validity of the name and surname fields
$error &= !checkName($name);
$error &= !checkSurname($surname);


if(!$error) {

    $sql = "INSERT INTO utente (username, cognome, nome, email, password) VALUES ('$username', '$surname', '$name', '$email', '$password')";
    $result = $conn->query($sql);

    if ($result){
        $type = 'success';
        $message = 'Thanks for registering';
        $errorCode = '';
    } else {
        $message = $conn->error;
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
