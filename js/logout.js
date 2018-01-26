logoutOnLoad = (function () {
    $("#logOut").onclick = function () {
        var linkLogOut = document.location + '/../../php/logout.php';
        $.ajax({
            type: "GET",
            url: linkLogOut,
            success: function (data) {
                console.log(data);
                window.location = '../index.php';
            }
        });
        return false;
    }

});

