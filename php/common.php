<?php
/**
 * Creates a hash password from the given one.
 * @param string $password: The password that must be hashed.
 * @return string:          The hashed password.
 */
function getEncryptedPassword($password) : string {
    return hash('sha512', $password);
}

/**
 * Checks that the password has from 8 to 20 characters.
 * @param string $password: Password to be checked.
 * @return bool: True if and only if the password satisfy the criteria, false otherwise.
 */
function checkPassword($password) : bool{
    return (strlen($password) < 8 || strlen($password > 20));
}

/**
 * Checks if the given password and its confirmation correspond.
 * @param string $password: Password inserted.
 * @param string $confirmPassword: Password confirmation.
 * @return bool: True if the password and its confirmation matches, false otherwise.
 */
function checkConfirmPassword($password, $confirmPassword) : bool{
    return $password != $confirmPassword;
}

/**
 * Checks that the given username is included inside the 6-20 characters page.
 * @param string $username: Username to be checked.
 * @return bool: True if the username satisfy the restrictions, false otherwise.
 */
function checkUsername($username) :bool{
    return !(strlen($username) < 6 || strlen($username) > 20);
}

/**
 * Checks the validity of the name.
 * @param string $name: Name to be checked.
 * @return bool: True if the name satisfy the criteria, false otherwise.
 */
function checkName($name) :bool{
    return  !(strlen($name) < 2 || strlen($name) > 35);
}

/**
 * Checks the validity of the surname.
 * @param string $surname: Name to be checked.
 * @return bool: True if the surname satisfy the criteria, false otherwise.
 */
function checkSurname($surname) : bool {
    return !(strlen($surname) < 2 || strlen($surname) > 35);
}
