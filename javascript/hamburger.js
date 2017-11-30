$(function (){
    var hamburger = document.getElementById("hamburger");
    hamburger.onclick = function () {
        if (document.getElementsByClassName('menuOpen').length == 0) {
            $('#drop_menu').addClass('menuOpen').removeClass('menuClose');
            $('#drop_menu').css('height','auto');
        }
        else if(document.getElementsByClassName('menuClose').length == 0){
            $('#drop_menu').addClass('menuClose').removeClass('menuOpen');
        }
    };
});
