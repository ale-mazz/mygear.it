<?php

session_start();

include_once('connection.php');

$PASSWORD_NOT_CORRECT = 'Vecchia password errata';
$OLDPASSWORD_EGUALS_NEWPASSWORD = 'Nuova passoword uguale alla vecchia';
$GENERAL_ERROR = 'Errore, riprovare più tardi';

// Get all POST variables
if (!isset($_POST['oldpassword']) || !isset($_POST['newpassword']) && !isset($_POST['repeatpassword'])) {
    die('failed.');
}
$username = $_SESSION['user_username'];
$oldPassword = $_POST['oldPassword'];
$newPassword = $_POST['newPassword'];
$repeatPassword = $_POST['repeatPassword'];
$old_user_password_hash = password_hash($oldPassword, PASSWORD_DEFAULT);
$new_user_password_hash = password_hash($newPassword, PASSWORD_DEFAULT);
$checkOldPasswordInDb = checkOldPassword($username, $old_user_password_hash, $conn);


if (!$checkOldPasswordInDb) {
    $type = 'error';
    $message = $PASSWORD_NOT_CORRECT;
} else {
    //guardo che non sia uguale a quella precedente
    if ($old_user_password_hash == $new_user_password_hash) {
        $type = 'error';
        $message = $OLDPASSWORD_EGUALS_NEWPASSWORD;
    } // se non è uguale allora aggiungo in db la password nuova
    else {
        $sql = "UPDATE users SET user_password_hash  = '$newPassword' WHERE user_username = '$username'";
        $success = $conn->query($sql);

        // Tell if the query has been successful or not
        if ($success) {
            $_SESSION['user_password_hash'] = $new_user_password_hash;
        } else {
            $type = 'success';
            $message = $GENERAL_ERROR;
        }
    }
}
function checkOldPassword($username, $old_user_password_hash, $conn)
{
    $sql = "SELECT * FROM users WHERE user_username = '$username' AND user_password_hash = '$old_user_password_hash'";
    $password = $conn->query($sql);
    return $password->num_rows == 1;

}

$responseArray = array('type' => $type, 'message' => $message);
$encoded = json_encode($responseArray);
header('Content-Type: application/json');
echo $encoded;
