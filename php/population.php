<?php
$servername = "localhost";
$username = "root";
$password = "";
$db = mygear;

// Create connection
$conn = new mysqli($servername, $username, $password, $db);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";

$dataArray = array();

$qry = mysqli_query($conn,"SELECT Codice_prodotto, Descrizione FROM alimentatori ORDER BY Codice_prodotto");

while($res = mysqli_fetch_array($qry)) {
    $dataArray[$res['Codice_prodotto']] = $res['Descrizione'];
}

if (!$qry) {
    printf("Error: %s\n", mysqli_error($conn));
    exit();
}

echo '<pre>';
print_r($dataArray);
echo '</pre>';
