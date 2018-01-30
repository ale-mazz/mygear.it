loginOnLoad = function () {
    document.getElementById('regLoginForm').onsubmit = sendLoginRequest;
};

/**
 * Sends a login request to the PHP REST API.
 * @return {boolean}: False to avoid the load of a new page with the real call to the API.
 */
sendLoginRequest = function () {
    // Define the path to the php file
    var url = document.location + "/../../php/dologin.php";

    // Call the ajax function of jQuery (http://api.jquery.com/jquery.ajax/)
    $.ajax({
        type: "POST",
        url: url,

        // Serialize the data, this will product a string like name=Mario&surname=Johnson&...
        data: $(this).serialize(),

        // Function called when the request has been successful
        success: function (data) {
            // console.log(data);
            if (data.type === "success") {
                // if (checkCookie()) {
                    // Get the user session created

                    var hashUserSession = data.message;

                    // If the cookies are enabled then save the session and redirect the user to the last page h
                    // visited
                // setCookie('userSession', hashUserSession, 43800);
                // window.location = getURLPage(getCookieById('page'));
                // } else {
                //     // Otherwise redirect it to the home page
                    window.location = '../index.php';
                // }

            }

            else {
                // Get the type of alert box that must be created
                var alertType = data.type;


                // Get the message that should be written in the alert box
                var messageText = data.message;

                // Create the alert box, which will have two different classes:
                // 1. 'alert-dismissable' which identifies that the popup should be possible to dismiss
                // 2. Either 'alert-error' or 'alert-success' which identify respectively that the request has encountered
                //    an error or it has been successful.
                var alertBox = createAlert('login', alertType, messageText);

                if (alertType && messageText) {
                    // If both alert message and type has been passed successfully than show the popup into the HTML page
                    var loginForm = $('#loginForm');
                    loginForm.find('.messages').html(alertBox);
                }

            }

        }
    });
    return false;
};
