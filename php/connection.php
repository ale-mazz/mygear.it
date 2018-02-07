<?php


$servername = "localhost";
$username = "root";
$password = "";
$db = "returnfa_mygear";

define("DB_HOST", $servername);
define("DB_NAME", $db);
define("DB_USER", $username);
define("DB_PASS", $password);

$conn = new mysqli($servername, $username, $password, $db);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// echo "Connected successfully";