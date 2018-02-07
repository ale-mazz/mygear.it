userOnLoad = function () {
    document.getElementById('userForm').onsubmit = userModifyRequest;
    document.getElementById('passwordForm').onsubmit = userPasswordModify;
    //document.getElementById('socialForm').onsubmit = userSocialModify;
};

userModifyRequest = function () {
    var url = document.location + "/../../php/usermodify.php";

    $.ajax({
        type: "POST",
        url: url,

        data: $(this).serialize(),

        success: function (data) {
            // console.log(data);
            if (data.type === "success") {
                window.location = document.location;
            } else {
                var alertType = data.type;
                var messageText = data.message;
                var alertBox = createAlert('username', alertType, messageText);

                if (alertType && messageText) {
                    var userForm = $('#userForm');
                    userForm.find('.messages').html(alertBox);
                }
            }
        }
    });
    return false;
};

userPasswordModify = function () {
    var url = document.location + "/../../php/usermodify.php";

    $.ajax({
        type: "POST",
        url: url,

        data: $(this).serialize(),

        success: function (data) {
            // console.log(data);
            if (data.type === "success") {
                window.location = document.location;
            } else {
                var alertType = data.type;
                var messageText = data.message;
                var alertBox = createAlert('password', alertType, messageText);

                if (alertType && messageText) {
                    var passwordForm = $('#passwordForm');
                    passwordForm.find('.messages').html(alertBox);
                }
            }
        }
    });
    return false;
};