<?php

unset ($_SESSION['user_username']);
unset ($_SESSION['user_email']);
$_SESSION['user_login_status'] = 0;

header('Content-Type: application/json');
echo json_encode(['message' => 'success']);