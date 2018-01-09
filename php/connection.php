<?php

// Connection to server and db "mygear"

$servername = "localhost";
$username = "root";
$password = "";
$db = "returnfa_mygear";

define("DB_HOST", $servername);
define("DB_NAME", $db);
define("DB_USER", $username);
define("DB_PASS", $password);

// Create connection
$conn = new mysqli($servername, $username, $password, $db);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
// echo "Connected successfully";