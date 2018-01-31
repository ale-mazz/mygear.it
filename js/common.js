//In questo file sono racchiusi tutte le funzioni comuni usate più volte

//Hamburger Menu Control

$(function () {
    var menuButton = document.getElementById("headerHamburger");
    menuButton.onclick = function () {
        if (document.getElementsByClassName('headerMenuOpen').length == 0) {
            $('#headerDropMenu').addClass('headerMenuOpen').removeClass('headerMenuClose');
            //$('#headerDropMenu').css('height','auto');
        }
        else if (document.getElementsByClassName('headerMenuClose').length == 0) {
            $('#headerDropMenu').addClass('headerMenuClose').removeClass('headerMenuOpen');
            //$('#headerDropMenu').css('height','3.857em');
        }
    };
});

//Creazione Alert

createAlert = function (id, alertType, message) {
    return '<div id="' + id + '" class="alert alert-' + alertType + ' alert-dismissable">' +
        '<button type="button" class="close" data-dismiss="alert" aria-hidden="true" ' +
        'onclick="closeAlert(' + id + ')">&times;</button>' +
        message +
        '' +
        '</div>';
};

//Chiusura Alert

closeAlert = function (div) {
    var messagesDiv = div.parentElement;
    messagesDiv.innerHTML = '';
};
