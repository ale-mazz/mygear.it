userOnLoad = function () {
    document.getElementById('userForm').onsubmit = userModifyRequest;
    document.getElementById('passwordForm').onsubmit = passwordModifyRequest;

};

userModifyRequest = function () {
    var url = document.location + "/../../php/usermodify.php";

    $.ajax({
        type: "POST",
        url: url,

        data: $(this).serialize(),

        success: function (data) {
            console.log(data);
            if (data.type === "success") {
                window.location = document.location;
            } else {
                var alertType = data.type;
                var messageText = data.message;
                var alertBox = createAlert('userForm', alertType, messageText);

                if (alertType && messageText) {
                    var userForm = $('#userForm');
                    userForm.find('.messages').html(alertBox);
                }
            }
        }
    });
    return false;
};

var oldPassword = document.getElementById("oldPassword");
var newPassword = document.getElementById("newPassword");
var repeatPassword = document.getElementById("repeatPassword");

passwordModifyRequest = function () {
    var url = document.location + "/../../php/passwordmodify.php";

    $.ajax({
        type: "POST",
        url: url,
        // Send the search text to the PHP script
        data: {
            'oldpassword': oldPassword.value,
            'newpassword': newPassword.value,
            'repeatpassword': repeatPassword.value
        },
        // Function called when the request has been successful
        success: function (data) {
            // Get the type of alert box that must be created
            var alertType = data.type;
            var messageText = '';
            // Get the message that should be written in the alert box
            if (data.type == 'success') {
                messageText = 'Password modificata';
            }
            else if (data.type == 'error') {

                messageText = data.message;
            }
            // Create the alert box, which will have two different classes:
            // 1. 'alert-dismissable' which identifies that the popup should be possible to dismiss
            // 2. Either 'alert-error' or 'alert-success' which identify respectively that the request has encountered
            //    an error or it has been successful.
            var alertBox = createAlert('passwordForm', alertType, messageText);
            if (alertType && messageText) {
                // If both alert message and type has been passed successfully than show the popup into the HTML page
                var loginForm = $('#passwordForm');
                loginForm.find('.messages').html(alertBox);
            }
        }
    });
    return false;

};
