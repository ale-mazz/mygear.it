<?php

session_start();

include_once('connection.php');

$username = $_SESSION['user_username'];

// Ottengo valori dei parametri POST
$facebook = isset($_POST['facebook']) ? $_POST['facebook'] : '';
$twitter = isset($_POST['twitter']) ? $_POST['twitter'] : '';
$instagram = isset($_POST['instagram']) ? $_POST['instagram'] : '';


// Ottengo valori dal database
$facebook_database = $_SESSION['facebook'];
$twitter_database = $_SESSION['twitter'];
$instagram_database = $_SESSION['instagram'];


// Calcolo i valori giusti
$insert_facebook = strlen($facebook) > 0 ? $facebook : $facebook_database;
$insert_twitter = strlen($twitter) > 0 ? $twitter : $twitter_database;
$insert_instagram = strlen($instagram) > 0 ? $instagram : $instagram_database;

$type = '';
$message = '';

$sql = "UPDATE users SET facebook = '$insert_facebook', twitter ='$insert_twitter', instagram = '$insert_instagram' WHERE user_username = '$username'";
$success = $conn->query($sql);

if ($success) {
    $_SESSION['facebook'] = $insert_facebook;
    $_SESSION['twitter'] = $insert_twitter;
    $_SESSION['instagram'] = $insert_instagram;

    $type = 'success';
    $message = 'Informazioni aggiornate';
} else {
    $type = 'error';
    $message = 'Errore query';
}

$responseArray = array('type' => $type, 'message' => $message);
$encoded = json_encode($responseArray);
header('Content-Type: application/json');
echo $encoded;