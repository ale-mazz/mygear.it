<?php

session_start();

include_once('connection.php');

$ERROR_USER_NOT_UNIQUE = 1;
$ERROR_GENERAL = 2;
$CODE_NOT_ERROR = 0;
$CODE_NONE_MODIFICATION = 3;

// Get all POST variables

if (!isset($_POST['username'])) {
    die('failed.');
}
$user = $_POST['username'];
$oldPassword = $_POST['oldPassword'];
$newPassword = $_POST['newPassword'];
$old_user_password_hash = password_hash($oldPassword, PASSWORD_DEFAULT);
$new_user_password_hash = password_hash($newPassword, PASSWORD_DEFAULT);


$success = true;
if ($user != $_SESSION['user_username']) {
    $success = isUsernameValid($user) && isUniqueUsername($user, $conn);
    if ($success) {
        $success = setUser($user, $conn);
    }
}

$type = $success ? 'success' : 'error';
$message = $success ? 'Nome utente modificato con successo' : 'Nome utente non valido';
$error = $success ? -1 : 0;


$successPassword = true;
if ($user != $_SESSION['user_username']) {
    $successPassword = controlPassword($user, $old_user_password_hash, $conn);
    if ($successPassword) {
        $successPassword = setPassword($new_user_password_hash, $old_user_password_hash, $conn);
    }
}

$type = $successPassword ? 'success' : 'error';
$message = $successPassword ? 'Psw modificata con successo' : 'Psw non valida';
$error = $success ? -1 : 0;


$responseArray = array('type' => $type, 'message' => $message, 'error' => $error);
$encoded = json_encode($responseArray);
header('Content-Type: application/json');
echo $encoded;


function isUsernameValid($username)
{
    return strlen($username) < 64 && strlen($username) > 2 && preg_match('/^[a-z\d]{2,64}$/i', $username);
}

function isUniqueUsername($username, $conn)
{
    $sql = "SELECT * FROM users WHERE user_username = '$username'";
    $usernames = $conn->query($sql);
    return $usernames->num_rows == 0;
}

function setUser($user, $conn)
{
    $oldUser = $_SESSION['user_username'];
    $sql = "UPDATE users SET user_username  = '$user' WHERE user_username = '$oldUser'";
    $success = $conn->query($sql);

    // Tell if the query has been successful or not
    if ($success) {
        $_SESSION['user_username'] = $user;
    }

    return $success;

}

function controlPassword($user, $old_user_password_hash, $conn)
{
    $sql = "SELECT * FROM users WHERE user_username = '$username' AND user_password_hash = '$old_user_password_hash'";
    $username = $conn->query($sql);
    return $username->num_rows == 1;
}

function setPassword($new_user_password_hash, $old_user_password_hash, $conn)
{
    $oldPassword = $_SESSION['user_password_hash'];
    $sql = "UPDATE users SET user_passoword_hash  = '$new_user_password_hash' WHERE user_password_hash = '$oldPassword'";
    $success = $conn->query($sql);

    if ($success) {
        $_SESSION['user_password_hash'] = $new_user_password_hash;
    }

    return $success;
}