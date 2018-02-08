//Javascript che gestisce il processo di Registrazione

checkPasswordAndConfirmationFields = function (password, confirmPassword) {
    var valid = false;

    if (password.value !== confirmPassword.value) {
        confirmPassword.setCustomValidity("Le password non coincidono.");
    } else {
        confirmPassword.setCustomValidity('');
        valid = true;
    }

    return valid;
};

const MIN_USERNAME_LENGTH = 2;
const MAX_USERNAME_LENGTH = 64;

checkUsernameFieldLength = function (username) {
    var usernameLength = username.value.length;
    var valid = false;

    if (usernameLength < MIN_USERNAME_LENGTH) {
        username.setCustomValidity("L'username deve essere lungo almeno " + MIN_USERNAME_LENGTH + " caratteri.");
    } else if (usernameLength > MAX_USERNAME_LENGTH) {
        username.setCustomValidity("L'username deve essere lungo meno di " + MAX_USERNAME_LENGTH + " caratteri.");
    } else {
        username.setCustomValidity('');
        valid = true;
    }

    return valid;
};

const MIN_PASSWORD_LENGTH = 6;
const MAX_PASSWORD_LENGTH = 20;

checkPasswordFieldLength = function (password) {
    var passwordLength = password.value.length;
    var valid = false;

    if (passwordLength < MIN_PASSWORD_LENGTH) {
        password.setCustomValidity("La password deve essere lunga almeno " + MIN_PASSWORD_LENGTH + " caratteri.");
    } else if (passwordLength > MAX_PASSWORD_LENGTH) {
        password.setCustomValidity("La password deve essere lunga meno di " + MAX_PASSWORD_LENGTH + " caratteri.");
    } else {
        password.setCustomValidity('');
        valid = true;
    }

    return valid;
};

const MIN_NAME_LENGTH = 2;
const MAX_NAME_LENGTH = 64;

checkNameFieldLength = function (name) {
    var nameLength = name.value.length;
    var valid = false;

    if (nameLength < MIN_NAME_LENGTH) {
        name.setCustomValidity("Questo campo deve essere lungo almeno " + MIN_NAME_LENGTH + " caratteri.");
    } else if (nameLength > MAX_NAME_LENGTH) {
        name.setCustomValidity("Questo campo deve essere lungo meno di " + MAX_NAME_LENGTH + " caratteri.");
    } else {
        name.setCustomValidity('');
        valid = true;
    }

    return valid;
};

const MIN_LONG_TEXT_LENGTH = 20;
const MAX_LONG_TEXT_LENGTH = 250;

checkLongTestFieldLength = function (field) {
    var fieldLength = field.value.length;
    var valid = false;

    if (fieldLength < MIN_LONG_TEXT_LENGTH) {
        name.setCustomValidity("Questo campo deve essere lungo almeno " + MIN_LONG_TEXT_LENGTH + " caratteri.");
    } else if (fieldLength > MAX_LONG_TEXT_LENGTH) {
        name.setCustomValidity("Questo campo deve essere lungo meno di " + MAX_LONG_TEXT_LENGTH + " caratteri.");
    } else {
        name.setCustomValidity('');
        valid = true;
    }

    return valid;
};


registerOnLoad = function () {
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

    document.getElementById("regLoginForm").onsubmit = sendRegisterRequest;
};

checkNameAndSurname = function () {
    var name = document.getElementById("name");
    return checkNameFieldLength(name);
};

checkUsername = function () {
    var username = document.getElementById("username");
    return checkUsernameFieldLength(username);
};

checkPassword = function () {
    var password = document.getElementById("password");
    var confirmPassword = document.getElementById("confirmPassword");

    return checkPasswordFieldLength(password) && checkPasswordAndConfirmationFields(password, confirmPassword);
};

sendRegisterRequest = function () {
    var url = document.location + "/../../php/register.php";

    $.ajax({
        type: "POST",
        url: url,

        data: $(this).serialize(),

        success: function (data) {
            //console.log(data);

            var alertType = data.type;

            var messageText = data.message;

            var errorCode = data.errorCode;
            var message = 'Registrazione effettuata con successo. Grazie per esserti registrato!';

            if (errorCode === 1) {
                message = 'Registrazione fallita. Controlla i campi e riprova.'
            }

            var alertBox = createAlert('register', alertType, message);


            if (alertType && messageText) {
                var registerForm = $('#regLoginForm');
                registerForm.find('.messages').html(alertBox);

                if (errorCode === '') {
                    registerForm[0].reset();
                }
            }
        }
    });

    return false;
};
