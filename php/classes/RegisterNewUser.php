<?php

/**
 * Class registration
 * handles the user registration
 */
class RegisterNewUser
{
    /**
     * @var object $db_connection The database connection
     */
    private $db_connection = null;
    /**
     * @var array $errors Collection of error messages
     */
    public $errors = array();
    /**
     * @var array $messages Collection of success / neutral messages
     */
    public $messages = array();

    /**
     * the function "__construct()" automatically starts whenever an object of this class is created,
     * you know, when you do "$registration = new registrationclass();"
     */
    public function __construct()
    {
        if (isset($_POST["register"])) {
            $this->registerNewUser($name, $username, $email, $password, $confirmpassword);
        }
    }

    /**
     * handles the entire registration process. checks all error possibilities
     * and creates a new user in the database if everything is fine
     */
    public function registerNewUser($name, $username, $email, $password, $confirmpassword)
    {

        if (strlen($name) > 64 || strlen($name) < 2) {
            $this->errors[] = "Name cannot be shorter than 2 or longer than 64 characters";
        } elseif (!preg_match('/^[a-z\d\s]{2,64}$/i', $name)) {
            $this->errors[] = "Name does not fit the name scheme: only a-Z and numbers are allowed, 2 to 64 characters";
        } elseif (empty($username)) {
            $this->errors[] = "Empty Username";
        } elseif (empty($password) || empty($confirmpassword)) {
            $this->errors[] = "Empty Password";
        } elseif ($password !== $confirmpassword) {
            $this->errors[] = "Password and password repeat are not the same";
        } elseif (strlen($password) < 6) {
            $this->errors[] = "Password has a minimum length of 6 characters";
        } elseif (strlen($username) > 64 || strlen($username) < 2) {
            $this->errors[] = "Username cannot be shorter than 2 or longer than 64 characters";
        } elseif (!preg_match('/^[a-z\d]{2,64}$/i', $username)) {
            $this->errors[] = "Username does not fit the name scheme: only a-Z and numbers are allowed, 2 to 64 characters";
        } elseif (empty($email)) {
            $this->errors[] = "Email cannot be empty";
        } elseif (strlen($email) > 64) {
            $this->errors[] = "Email cannot be longer than 64 characters";
        } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $this->errors[] = "Your email address is not in a valid email format";
        } elseif (!empty($username)
            && strlen($username) <= 64
            && strlen($username) >= 2
            && preg_match('/^[a-z\d]{2,64}$/i', $username)
            && !empty($email)
            && strlen($email) <= 64
            && filter_var($email, FILTER_VALIDATE_EMAIL)
            && !empty($password)
            && !empty($confirmpassword)
            && ($password === $confirmpassword)
        ) {
            // create a database connection
            $this->db_connection = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);

            // change character set to utf8 and check it
            if (!$this->db_connection->set_charset("utf8")) {
                $this->errors[] = $this->db_connection->error;
            }

            // if no connection errors (= working database connection)
            if (!$this->db_connection->connect_errno) {

                // escaping, additionally removing everything that could be (html/javascript-) code
                $name = $this->db_connection->real_escape_string(strip_tags($name, ENT_QUOTES));
                $user_name = $this->db_connection->real_escape_string(strip_tags($username, ENT_QUOTES));
                $user_email = $this->db_connection->real_escape_string(strip_tags($email, ENT_QUOTES));

                $user_password = $password;

                $user_password_hash = password_hash($user_password, PASSWORD_DEFAULT);

                // check if user or email address already exists
                $sql = "SELECT * FROM users WHERE user_username = '$user_name' OR user_email = '$user_email'";
                $query_check_user_name = $this->db_connection->query($sql);

                if ($query_check_user_name->num_rows == 1) {
                    $this->errors[] = "Username o Email già esistente.";
                } else {
                    // write new user's data into database
                    $sql = "INSERT INTO users (user_name, user_username, user_password_hash, user_email)
                            VALUES('" . $name . "', '" . $user_name . "', '" . $user_password_hash . "', '" . $user_email . "');";
                    $query_new_user_insert = $this->db_connection->query($sql);

                    // if user has been added successfully
                    if ($query_new_user_insert) {
                        $this->messages[] = "Il tuo account è stato creato correttamente.";
                    } else {
                        $this->errors[] = "Registrazione fallita, per favore riprova.";
                    }
                }
            } else {
                $this->errors[] = "Connessione al DB fallita.";
            }
        } else {
            $this->errors[] = "An unknown error occurred.";
        }
    }
}
