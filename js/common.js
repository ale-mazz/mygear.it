//In questo file sono racchiusi tutte le funzioni comuni usate più volte

//Controllo del menù a tendina

$(function () {
    var menuButton = document.getElementById("headerHamburger");
    menuButton.onclick = function () {
        if (document.getElementsByClassName('headerMenuOpen').length == 0) {
            $('#headerDropMenu').addClass('headerMenuOpen').removeClass('headerMenuClose');
        }
        else if (document.getElementsByClassName('headerMenuClose').length == 0) {
            $('#headerDropMenu').addClass('headerMenuClose').removeClass('headerMenuOpen');
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
