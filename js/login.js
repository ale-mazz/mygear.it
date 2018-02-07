//Javascript che gestisce il processo di Login

loginOnLoad = function () {
    document.getElementById('regLoginForm').onsubmit = sendLoginRequest;
};

sendLoginRequest = function () {
    var url = document.location + "/../../php/dologin.php";

    $.ajax({
        type: "POST",
        url: url,

        data: $(this).serialize(),

        success: function (data) {
            // console.log(data);
            if (data.type === "success") {


                var hashUserSession = data.message;

                window.location = '../index.php';
            }

            else {
                var alertType = data.type;


                var messageText = data.message;


                var alertBox = createAlert('login', alertType, messageText);

                if (alertType && messageText) {
                    var loginForm = $('#regLoginForm');
                    loginForm.find('.messages').html(alertBox);
                }

            }

        }
    });
    return false;
};
