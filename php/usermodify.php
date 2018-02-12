<?php

session_start();

include_once('connection.php');

$ERROR_USER_NOT_UNIQUE = 1;
$ERROR_GENERAL = 2;
$CODE_NOT_ERROR = 0;
$CODE_NONE_MODIFICATION = 3;

if (!isset($_POST['username'])) {
    die('failed.');
}

$user = $_POST['username'];

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

    if ($success) {
        $_SESSION['user_username'] = $user;
    }

    return $success;

}

$responseArray = array('type' => $type, 'message' => $message);
$encoded = json_encode($responseArray);
header('Content-Type: application/json');
echo $encoded;

