userOnLoad = function () {
    document.getElementById('userForm').onsubmit = userModifyRequest;
    document.getElementById('passwordForm').onsubmit = passwordModifyRequest;
    document.getElementById('contactForm').onsubmit = contactModifyRequest;


};

userModifyRequest = function () {
    var url = document.location + "/../../php/usermodify.php";

    $.ajax({
        type: "POST",
        url: url,

        data: $(this).serialize(),

        success: function (data) {
            console.log(data);
            if (data.type == 'success') {
                messageText = 'Utente modificato con successo';
                window.location = 'user.php';
            }
            else if (data.type == 'error') {

                document.getElementById("userForm").reset();
                var alertType = data.type;
                var messageText = data.message;
            }
            if (alertType && messageText) {
                $('#messageUser').append("<div id='errorMessage'>" + messageText + "</div>");
                setTimeout(function () {
                    $('#errorMessage').remove();
                }, 3000);
            }
        }
    });
    return false;
};

passwordModifyRequest = function () {
    var url = document.location + "/../../php/passwordmodify.php";

    $.ajax({
        type: "POST",
        url: url,
        data: $(this).serialize(),
        success: function (data) {
            console.log(data);

            var alertType = data.type;
            var messageText = '';
            if (data.type == 'success') {
                messageText = 'Password modificata';
                document.getElementById("passwordForm").reset();
            }
            else if (data.type == 'error') {
                document.getElementById("passwordForm").reset();
                messageText = data.message;
            }
            if (alertType && messageText) {
                $('#messagePassword').append("<div id='errorMessage'>" + messageText + "</div>");
                setTimeout(function () {
                    $('#errorMessage').remove();
                }, 3000);
            }
        }
    });
    return false;

};

contactModifyRequest = function () {
    var url = document.location + "/../../php/contactmodify.php";

    $.ajax({
        type: "POST",
        url: url,

        data: $(this).serialize(),

        success: function (data) {

            var alertType = data.type;
            var messageText = '';
            if (data.type == 'success') {
                messageText = 'Informazioni modificate';
                window.location = 'user.php';
            }
            else if (data.type == 'error') {

                messageText = data.message;
            }
            if (alertType && messageText) {
                $('#messageContact').append("<div id='errorMessage'>" + messageText + "</div>");
                setTimeout(function () {
                    $('#errorMessage').remove();
                }, 3000);
            }
        }
    });
    return false;
};
