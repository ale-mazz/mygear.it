
//Js da sistemare



closeAlert = function (div) {
    var messagesDiv = div.parentElement;
    messagesDiv.innerHTML = '';
};

/**
 * Creates a custom alert.
 * @param id: Id of the alert.
 * @param alertType: Type of the alert that should be created, can either be 'success' or 'error'.
 * @param message: Message to be displayed inside the alert.
 * @returns {string}: Returns the created <div> element which represents the alert.
 */
createAlert = function(id, alertType, message){
    return '<div id="' + id +'" class="alert alert-' + alertType + ' alert-dismissable">' +
        '<button type="button" class="close" data-dismiss="alert" aria-hidden="true" ' +
        'onclick="closeAlert('+ id +')">&times;</button>' +
        message +
        '' +
        '</div>';
};


/**
 * Checks if a field containing a password and one containing a confirmation of that password match.
 * @param password: HTML element containing the password.
 * @param confirmPassword: HTML element containing the password' confirm.
 * @return {boolean}: True if and only if the password and it's confirmation match, false otherwise.
 */
checkPasswordAndConfirmationFields = function (password, confirmPassword){
    var valid = false;

    if(password.value !== confirmPassword.value) {
        confirmPassword.setCustomValidity("Le password non coincidono");
    } else {
        confirmPassword.setCustomValidity('');
        valid = true;
    }

    return valid;
};

const MIN_USERNAME_LENGTH = 6;
const MAX_USERNAME_LENGTH = 20;
/**
 * Checks if a field containing a username is valid.
 * @param username: HTML element containing the username as value.
 * @return {boolean}: True if and only if the username has a number of characters allowed, false otherwise.
 */
checkUsernameFieldLength = function(username) {
    var usernameLength = username.value.length;
    var valid = false;

    if(usernameLength < MIN_USERNAME_LENGTH) {
        username.setCustomValidity("L'username deve essere lungo almeno " + MIN_USERNAME_LENGTH + " caratteri");
    } else if (usernameLength > MAX_USERNAME_LENGTH) {
        username.setCustomValidity("L'username deve essere lungo meno di " + MAX_USERNAME_LENGTH + " caratteri");
    } else {
        username.setCustomValidity('');
        valid = true;
    }

    return valid;
};

const MIN_PASSWORD_LENGTH = 8; const MAX_PASSWORD_LENGTH = 20;
/**
 * Checks if a field containing a password is valid.
 * @param password: HTML element containing the password as value.
 * @return {boolean}: True if and only if the password has a number of characters allowed, false otherwise.
 */
checkPasswordFieldLength = function(password) {
    var passwordLength = password.value.length;
    var valid = false;

    if(passwordLength < MIN_PASSWORD_LENGTH) {
        password.setCustomValidity("La password deve essere lunga almeno " + MIN_PASSWORD_LENGTH + " caratteri");
    } else if (passwordLength > MAX_PASSWORD_LENGTH) {
        password.setCustomValidity("La password deve essere lunga meno di " + MAX_PASSWORD_LENGTH + " caratteri");
    } else {
        password.setCustomValidity('');
        valid = true;
    }

    return valid;
};

const MIN_NAME_LENGTH = 2; const MAX_NAME_LENGTH = 35;
/**
 * Checks if a field containing a name or username is valid.
 * @param name or username: HTML element containing the password as value.
 * @return {boolean}: True if and only if the name or username has a number of characters allowed, false otherwise.
 */
checkNameFieldLength = function (name){
    var nameLength = name.value.length;
    var valid = false;

    if(nameLength < MIN_NAME_LENGTH) {
        name.setCustomValidity("Questo campo deve essere lungo almeno " + MIN_NAME_LENGTH + " caratteri");
    } else if (nameLength > MAX_NAME_LENGTH) {
        name.setCustomValidity("Questo campo deve essere lungo meno di " + MAX_NAME_LENGTH + " caratteri");
    } else {
        name.setCustomValidity('');
        valid = true;
    }

    return valid;
};

const MIN_LONG_TEXT_LENGTH = 20; const MAX_LONG_TEXT_LENGTH = 250;
/**
 * Checks that an input field which contains a long text contains a valid text.
 * @param field: Input field which contains the text.
 * @return {boolean}: True if and only if the text contained is a valid text, false otherwise.
 */
checkLongTestFieldLength = function (field) {
    var fieldLength = field.value.length;
    var valid = false;

    if(fieldLength < MIN_LONG_TEXT_LENGTH) {
        name.setCustomValidity("Questo campo deve essere lungo almeno " + MIN_LONG_TEXT_LENGTH + " caratteri");
    } else if (fieldLength > MAX_LONG_TEXT_LENGTH) {
        name.setCustomValidity("Questo campo deve essere lungo meno di " + MAX_LONG_TEXT_LENGTH + " caratteri");
    } else {
        name.setCustomValidity('');
        valid = true;
    }

    return valid;
};


/**
 * Called when the registration page loads. Setups all the different checks to be made.
 */
registerOnLoad = function () {
    /* Get all the fields to later check for validity*/
    var username = document.getElementById("username");
    var password = document.getElementById("password");
    var confirmPassword = document.getElementById("confirmPassword");
    var name = document.getElementById("name");

    username.onchange = function () {
        checkUsernameFieldLength(document.getElementById('username'));
    };
    password.onchange = function () {
        var password = document.getElementById("password");
        var confirmPassword = document.getElementById("confirmPassword");

        return checkPasswordFieldLength(password) && checkPasswordAndConfirmationFields(password, confirmPassword);
    };
    confirmPassword.onkeyup = checkPassword;

    name.onchange = checkNameAndSurname;

    /* Attach the proper function to the submit event of the form*/
    document.getElementById("registerForm").onsubmit = sendRegisterRequest;
};
/**
 * Checks that the username and name inserted are valid.
 * @return {boolean}: True if both the name and username are valid, false otherwise.
 */
checkNameAndSurname = function () {
    var name = document.getElementById("name");
    return checkNameFieldLength(name);
};
/**
 * Checks that the username field has the proper length.
 * @return {boolean} Returns true if the username field has a valid value, false otherwise.
 */
checkUsername = function() {
    var username = document.getElementById("username");
    return checkUsernameFieldLength(username);};
/**
 * Checks that the password field has the proper length and that the confirmation password one has the same value as the
 * password itself.
 * @returns {boolean} Returns true if the password field has a valid value and is equals to the confirmation, false otherwise.
 */
checkPassword = function () {
    var password = document.getElementById("password");
    var confirmPassword = document.getElementById("confirmPassword");

    return checkPasswordFieldLength(password) && checkPasswordAndConfirmationFields(password, confirmPassword);};
/**
 * Sends a request to the proper PHP API which is responsible to register a new user.
 * @return {boolean} Returns false to avoid that the API is called also from the form, avoiding a redirect to a black
 * page which would result from the API execution.
 */
sendRegisterRequest = function () {
    /* Define the path to the php file*/
    var url = document.location + "/../../php/register.php";

    /* Call the ajax function of jQuery (http://api.jquery.com/jquery.ajax/)*/
    $.ajax({
        type: "POST",
        url: url,

        /* Serialize the data, this will product a string like name=Mario&surname=Johnson&...*/
        data: $(this).serialize(),

        /* Function called when the request has been successful*/
        success: function (data){
            console.log(data);

            /* Get the type of alert box that must be created*/
            var alertType = data.type;

            /* Get the message that should be written in the alert box*/
            var messageText = data.message;

            /* Get the error code associated with the possible error*/
            var errorCode = data.errorCode;
            var message = 'Registrazione effettuata con successo. Grazie per esserti registrato!';

            if(errorCode === 1){
                message = 'Registrazione fallita. Per favore controlla e riprova.'
            }

            /* Create the alert box, which will have two different classes:*/
            /* 1. 'alert-dismissable' which identifies that the popup should be possible to dismiss*/
            /* 2. Either 'alert-error' or 'alert-success' which identify respectively that the request has encountered*/
            /*    an error or it has been successful.*/
            var alertBox = createAlert('register', alertType, message);


            if (alertType && messageText) {
                /* If both alert message and type has been passed successfully than show the popup into the HTML page*/
                var registerForm = $('#registerForm');
                registerForm.find('.messages').html(alertBox);

                /* If the registration has been successful then reset the form*/
                if(errorCode === ''){
                    registerForm[0].reset();
                }
            }
        }
    });

    return false;
};