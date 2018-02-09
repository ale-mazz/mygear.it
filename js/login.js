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

                window.location = '../index.php';
            }
            else {
                var alertType = data.type;
                var messageText = data.message;

                if (alertType && messageText) {
                    document.getElementById("regLoginForm").reset();
                    $('#messageUserdata').append("<div id='loginMessage'>" + messageText + "</div>");
                    setTimeout(function () {
                        $('#loginMessage').remove();
                    }, 3000);
                }

            }

        }
    });
    return false;
};
