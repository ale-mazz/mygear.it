<?php

session_start();

include_once('connection.php');

// Get all POST variables

if (!isset($_POST['username'])) {
    die('failed.');
}
$username = $_POST['username'];
$facebook = $_POST['facebook'];
$twitter = $_POST['twitter'];
$instagram = $_POST['instagram'];


$success = setContact($facebook, $twitter, $instagram, $conn);

$type = $success ? 'success' : 'error';
$message = $success ? 'Informazioni modificate con successo' : 'Modifica non riuscita';
$error = $success ? -1 : 0;


function setContact($facebook, $twitter, $instagram, $conn)
{

    $sql = "UPDATE users SET facebook  = '$facebook' WHERE user_username = '$username' AND SET instagram = '$instagram' WHERE user_username = '$username' AND SET twitter = '$twitter' WHERE user_username = '$username'";
    $success = $conn->query($sql);
    // Tell if the query has been successful or not
    if ($success) {
        $_SESSION['facebook'] = $facebook;
        $_SESSION['instagram'] = $instagram;
        $_SESSION['twitter'] = $twitter;

    }

    return $success;

}

$responseArray = array('type' => $type, 'message' => $message);
$encoded = json_encode($responseArray);
header('Content-Type: application/json');
echo $encoded;