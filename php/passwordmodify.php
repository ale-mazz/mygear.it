<?php

session_start();

include_once('connection.php');

$PASSWORD_NOT_CORRECT = 'Vecchia password errata';
$OLDPASSWORD_EGUALS_NEWPASSWORD = 'Nuova passoword uguale alla vecchia';
$REPEAT_PASSWORD_DO_NOT_MATH = 'Le due password non coincidono';
$GENERAL_ERROR = 'Errore, riprovare più tardi';

// Get all POST variables
if (!isset($_POST['oldPassword']) || !isset($_POST['newPassword']) || !isset($_POST['repeatPassword'])) {
    die('failed.');
}
$username = $_SESSION['user_username'];
$oldPassword = $_POST['oldPassword'];
$newPassword = $_POST['newPassword'];
$repeatPassword = $_POST['repeatPassword'];
$old_user_password_hash = hash('sha512', $oldPassword);
$new_user_password_hash = hash('sha512', $newPassword);
$new_user_password_repeat_hash = hash('sha512', $repeatPassword);
$checkOldPasswordInDb = checkOldPassword($username, $old_user_password_hash, $conn);

$type = '';
$message = '';
if (!$checkOldPasswordInDb) {
    $type = 'error';
    $message = $PASSWORD_NOT_CORRECT;
} else {
    //guardo che non sia uguale a quella precedente
    if ($old_user_password_hash == $new_user_password_hash) {
        $type = 'error';
        $message = $OLDPASSWORD_EGUALS_NEWPASSWORD;
    } // se non è uguale allora aggiungo in db la password nuova
    else if ($new_user_password_hash != $new_user_password_repeat_hash) {
        $type = 'error';
        $message = $REPEAT_PASSWORD_DO_NOT_MATH;
    } else {
        $sql = "UPDATE users SET user_password_hash  = '$new_user_password_hash' WHERE user_username = '$username'";
        $success = $conn->query($sql);

        // Tell if the query has been successful or not
        if ($success) {
            $type = 'success';
            $message = 'Password cambiata';
        } else {
            $type = 'error';
            $message = $GENERAL_ERROR;
        }
    }
}

$responseArray = array('type' => $type, 'message' => $message);
$encoded = json_encode($responseArray);
header('Content-Type: application/json');
echo $encoded;

function checkOldPassword($username, $old_user_password_hash, $conn)
{
    $sql = "SELECT * FROM users WHERE user_username = '$username' AND user_password_hash = '$old_user_password_hash'";
    $password = $conn->query($sql);
    return $password->num_rows == 1;
}


