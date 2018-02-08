<?php

//Classe che gestisce il processo di Login. Js Obbligatorio

class loginUser
{

    private $db_connection = null;

    public $errors = array();

    public $messages = array();


    public function __construct()
    {
        session_start();

        if (isset($_POST["login"])) {
            $this->loginUser($username, $password);
        }
    }


    public function loginUser($username, $password)
    {
        if (empty($username)) {
            $this->errors[] = "Campo Username vuoto.";
        } elseif (empty($password)) {
            $this->errors[] = "Campo Password vuoto.";
        } elseif (!empty($username) && !empty($password)) {


            $this->db_connection = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);

            if (!$this->db_connection->set_charset("utf8")) {
                $this->errors[] = $this->db_connection->error;
            }

            if (!$this->db_connection->connect_errno) {

                $user_username = $this->db_connection->real_escape_string($username);

                $sql = "SELECT user_username, user_email, user_password_hash, facebook, twitter, instagram
                        FROM users
                        WHERE user_username = '$user_username'";
                $result_of_login_check = $this->db_connection->query($sql);

                if ($result_of_login_check->num_rows == 1) {

                    $result_row = $result_of_login_check->fetch_object();


                    if (hash('sha512', $password) == $result_row->user_password_hash) {

                        $_SESSION['user_username'] = $result_row->user_username;
                        $_SESSION['user_email'] = $result_row->user_email;
                        $_SESSION['facebook'] = $result_row->facebook;
                        $_SESSION['twitter'] = $result_row->twitter;
                        $_SESSION['instagram'] = $result_row->instagram;
                        $_SESSION['user_login_status'] = 1;
                    } else {
                        $this->errors[] = "Password errata, riprova.";
                    }
                } else {
                    $this->errors[] = "Utente non esistente.";
                }
            } else {
                $this->errors[] = "Errore di connessione al Database.";
            }
        }
    }

}
