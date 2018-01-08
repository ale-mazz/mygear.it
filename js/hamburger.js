/*JQUERY JS*/

$(function (){
    var menuButton = document.getElementById("headerHamburger");
    menuButton.onclick = function () {
        if (document.getElementsByClassName('headerMenuOpen').length == 0) {
            $('#headerDropMenu').addClass('headerMenuOpen').removeClass('headerMenuClose');
            //$('#headerDropMenu').css('height','auto');
        }
        else if(document.getElementsByClassName('headerMenuClose').length == 0){
            $('#headerDropMenu').addClass('headerMenuClose').removeClass('headerMenuOpen');
            //$('#headerDropMenu').css('height','3.857em');
        }
    };
});
